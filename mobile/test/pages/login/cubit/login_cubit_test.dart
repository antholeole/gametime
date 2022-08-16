import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:gametime/data/user_data.dart';
import 'package:gametime/pages/login/cubit/login_cubit.dart';
import 'package:gametime/pages/login/queries/login.graphql.dart';
import 'package:gametime/register_services.dart';
import 'package:gql_client/gql_client.dart';
import 'package:graphql/client.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:local_user/local_user.dart';
import 'package:mocktail/mocktail.dart';
import 'package:uuid_type/uuid_type.dart';

import '../../../helpers/mocks.dart';
import '../../../helpers/register_all_mock_services.dart';

void main() {
  const fakeLoginToken = "fakeLoginToken";

  group('login', (() {
    const loginExceptionMessage = "loginExceptionMessage";

    blocTest<LoginCubit, LoginState>(
      'should emit exception if gql authenticate failed',
      setUp: () {
        registerAllMockServices();

        when(
          () => getIt<GQLClient>().mutate(Options$Mutation$Authenticate(
            variables: Variables$Mutation$Authenticate(token: fakeLoginToken),
          )),
        ).thenAnswer(
          (_) async => QueryResult(
            source: QueryResultSource.network,
            exception: OperationException(graphqlErrors: const [
              GraphQLError(message: loginExceptionMessage)
            ]),
            options: Options$Mutation$Authenticate(
              variables: Variables$Mutation$Authenticate(token: fakeLoginToken),
            ),
          ),
        );
      },
      build: () => LoginCubit(),
      act: (cubit) => cubit.login(fakeLoginToken),
      expect: () => [
        LoginState.loading(),
        isA<LoginState>().having(
            (loginState) => loginState.mapOrNull<String?>(
                  prompting: (ex) => ex.exception?.toString(),
                ),
            "message",
            contains(loginExceptionMessage))
      ],
    );

    const fakeAccessToken = "ASDLASPDOLASPODL";
    const fakeRefreshToken = "FAKSDAOKSDP";
    final UuidType fakeId = UuidType.generate();
    const isAdmin = true;
    blocTest<LoginCubit, LoginState>(
      'should login and emit success on successful login',
      setUp: () {
        registerAllMockServices();

        when(() => getIt<LocalUser<UserData>>().logIn(
                fakeId, fakeRefreshToken, const UserData(admin: isAdmin)))
            .thenAnswer((invocation) async {});

        when(
          () => getIt<GQLClient>().mutate(Options$Mutation$Authenticate(
            variables: Variables$Mutation$Authenticate(token: fakeLoginToken),
          )),
        ).thenAnswer(
          (_) async => FakeQueryResult<Mutation$Authenticate>(
            Mutation$Authenticate(
              $__typename: "",
              authenticate: Mutation$Authenticate$authenticate(
                $__typename: "",
                id: fakeId,
                access_token: fakeAccessToken,
                refresh_token: fakeRefreshToken,
                admin: isAdmin,
              ),
            ),
          ),
        );
      },
      build: () => LoginCubit(),
      act: (cubit) => cubit.login(fakeLoginToken),
      expect: () => [
        LoginState.loading(),
        LoginState.loggedIn(),
      ],
      verify: (_) => verify(() => getIt<LocalUser<UserData>>().logIn(
          fakeId, fakeRefreshToken, const UserData(admin: isAdmin))).called(1),
    );
  }));
}
