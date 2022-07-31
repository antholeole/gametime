import 'package:bloc/bloc.dart';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:gametime/register_services.dart';
import 'package:gametime/pages/login/queries/login.graphql.dart';
import 'package:graphql/client.dart';
import 'package:local_user/local_user.dart';
import 'package:uuid_type/uuid_type.dart';

part 'login_state.dart';
part 'login_cubit.freezed.dart';

class LoginCubit extends Cubit<LoginState> {
  final GraphQLClient _gqlClient = getIt<GraphQLClient>();
  final LocalUser _localUser = getIt<LocalUser>();

  LoginCubit({Exception? initalException})
      : super(LoginState.prompting(exception: initalException));

  Future<void> login(String loginToken) async {
    emit(LoginState.loading());

    final result = await _gqlClient.mutate$Authenticate(
        Options$Mutation$Authenticate(
            variables: Variables$Mutation$Authenticate(token: loginToken)));

    if (result.exception != null) {
      emit(LoginState.prompting(exception: result.exception));
      return;
    }

    // Since we have no identity, there is no userId.
    await _localUser.logIn(
        UuidType.generate(), result.parsedData!.authenticate!.refreshToken!);

    emit(LoginState.loggedIn());
  }
}
