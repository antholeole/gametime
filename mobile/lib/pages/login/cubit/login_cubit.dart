import 'package:bloc/bloc.dart';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:gametime/data/user_data.dart';
import 'package:gametime/register_services.dart';
import 'package:gametime/pages/login/queries/login.graphql.dart';
import 'package:gql_client/gql_client.dart';
import 'package:graphql/client.dart';
import 'package:local_user/local_user.dart';

part 'login_state.dart';
part 'login_cubit.freezed.dart';

class LoginCubit extends Cubit<LoginState> {
  final GraphQLClient _gqlClient = getIt<GQLClient>();
  final LocalUser<UserData> _localUser = getIt<LocalUser<UserData>>();

  LoginCubit({Exception? initalException})
      : super(LoginState.prompting(exception: initalException));

  Future<void> login(String loginToken) async {
    emit(LoginState.loading());

    final result = await _gqlClient.mutate$Authenticate(
      Options$Mutation$Authenticate(
        variables: Variables$Mutation$Authenticate(token: loginToken),
      ),
    );

    if (result.exception != null) {
      emit(LoginState.prompting(
          exception: cleanGqlException(result.exception!)));
      return;
    }

    await _localUser.logIn(
        result.parsedData!.authenticate!.id,
        result.parsedData!.authenticate!.refresh_token,
        UserData(
          admin: result.parsedData!.authenticate!.admin,
        ));

    emit(LoginState.loggedIn());
  }
}
