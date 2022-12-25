import 'package:bloc/bloc.dart';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:gametime/data/user_data.dart';
import 'package:gametime/pages/login/queries/login.graphql.dart';
import 'package:gametime/schema.graphql.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:gql_client/gql_client.dart';
import 'package:local_user/local_user.dart';

import '../../../data/tokens.dart';
import '../../../register_services.dart';

part 'login_cubit.freezed.dart';
part 'login_state.dart';

enum LoginType {
  google,
}

class LoginCubit extends Cubit<LoginState> {
  final _googleSignIn = getIt<GoogleSignIn>();
  final _localUser = getIt<LocalUser<UserData>>();
  final _gqlClient = getIt<GQLClient>();

  LoginCubit({Exception? initalException})
      : super(LoginState.prompting(exception: initalException));

  Future<void> login(LoginType loginType) async {
    emit(LoginState.loading());

    _ProviderLoginDetails providerLoginDetails;

    try {
      switch (loginType) {
        case LoginType.google:
          providerLoginDetails = await _googleLogin();
          break;
      }
    } on _UserDeniedException catch (_) {
      emit(
          LoginState.prompting(exception: Exception('Login process aborted.')));
      return;
    } on Exception catch (e) {
      emit(LoginState.prompting(exception: e));
      return;
    }

    Tokens backendAccessTokens;
    try {
      backendAccessTokens =
          await _getBackendAuth(loginType, providerLoginDetails.idToken);
    } on Exception catch (e) {
      emit(LoginState.prompting(exception: e));
      return;
    }

    _localUser.logIn(
      backendAccessTokens.userId,
      backendAccessTokens.refreshToken,
      const UserData(),
    );
  }

  Future<Tokens> _getBackendAuth(
      LoginType loginType, String providerIdToken) async {
    final result = await _gqlClient.mutate$Authenticate(
      Options$Mutation$Authenticate(
        variables: Variables$Mutation$Authenticate(
          token: providerIdToken,
          auth_provider: Enum$AuthProvider.Google, //always google
        ),
      ),
    );

    if (result.exception != null) {
      throw cleanGqlException(result.exception!);
    }

    return Tokens(
      userId: result.parsedData!.authenticate!.id,
      refreshToken: result.parsedData!.authenticate!.refresh_token,
    );
  }

  Future<_ProviderLoginDetails> _googleLogin() async {
    final acc = await _googleSignIn.signIn();

    if (acc == null) {
      throw _UserDeniedException();
    }

    final auth = await acc.authentication;

    return _ProviderLoginDetails(
        email: acc.email, idToken: auth.idToken!, displayName: acc.displayName);
  }
}

@immutable
class _ProviderLoginDetails {
  final String email;
  final String? displayName;
  final String idToken;

  const _ProviderLoginDetails(
      {required this.email, this.displayName, required this.idToken});
}

class _UserDeniedException extends Error {}
