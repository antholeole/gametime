import 'dart:ui';

import 'package:flutter_test/flutter_test.dart';
import 'package:gametime/data/user_data.dart';
import 'package:gametime/register_services.dart';
import 'package:gametime/router/router.gr.dart';
import 'package:gametime/router/user_state_observer.dart';
import 'package:local_user/local_user.dart';
import 'package:mocktail/mocktail.dart';
import 'package:uuid_type/uuid_type.dart';

import '../helpers/mocks.dart';
import '../helpers/register_all_mock_services.dart';

void main() {
  late MockAppRouter mockAppRouter;

  setUp(() {
    mockAppRouter = MockAppRouter();

    registerAllMockServices();

    when(() => mockAppRouter.replaceAll(any())).thenAnswer((_) async {});
    when(() => getIt<LocalUser<UserData>>().determineState())
        .thenAnswer((_) async {});
    when(() => getIt<LocalUser<UserData>>().addListener(any()))
        .thenAnswer((invoc) async {
      (invoc.positionalArguments.first as VoidCallback)();
    });
  });

  group('user state observer', () {
    test('should put splash screen on loading user', () {
      when(() => getIt<LocalUser<UserData>>().on<Future<void>>(
            loggedOut: any(named: "loggedOut"),
            loggedIn: any(named: "loggedIn"),
            loading: any(named: "loading"),
          )).thenAnswer((invocation) async {
        await (invocation.namedArguments[const Symbol("loading")]
            as Future<void> Function())();
      });

      //registers listeners
      UserStateObserver(mockAppRouter);

      verify(() =>
              mockAppRouter.replaceAll(any(that: contains(isA<SplashRoute>()))))
          .called(1);
    });

    test('should put home screen on logged in', () {
      final UuidType fakeUserId = UuidType.generate();
      const UserData fakeUserData = UserData(admin: false);

      when(() => getIt<LocalUser<UserData>>().on<Future<void>>(
            loggedOut: any(named: "loggedOut"),
            loggedIn: any(named: "loggedIn"),
            loading: any(named: "loading"),
          )).thenAnswer((invocation) async {
        await (invocation.namedArguments[const Symbol("loggedIn")]
            as Future<void> Function(
          UuidType,
          UserData,
        ))(fakeUserId, fakeUserData);
      });

      //registers listeners
      UserStateObserver(mockAppRouter);

      verify(() => mockAppRouter.replaceAll(any(
              that: contains(isA<HomeRoute>().having(
            (route) => route.args?.userData,
            "userData",
            fakeUserData,
          ))))).called(1);
    });

    group("log out", () {
      test('should put login route', () async {
        when(() => getIt<LocalUser<UserData>>().on<Future<void>>(
              loggedOut: any(named: "loggedOut"),
              loggedIn: any(named: "loggedIn"),
              loading: any(named: "loading"),
            )).thenAnswer((invocation) async {
          await (invocation.namedArguments[const Symbol("loggedOut")]
              as Future<void> Function(Exception?))(null);
        });

        //registers listeners
        UserStateObserver(mockAppRouter);

        verify(() => mockAppRouter
            .replaceAll(any(that: contains(isA<SplashRoute>())))).called(1);

        await untilCalled(() =>
            mockAppRouter.replaceAll(any(that: contains(isA<LoginRoute>()))));
      });

      test('should put login route with exception', () async {
        final Exception fakeException = Exception("Test");

        when(() => getIt<LocalUser<UserData>>().on<Future<void>>(
              loggedOut: any(named: "loggedOut"),
              loggedIn: any(named: "loggedIn"),
              loading: any(named: "loading"),
            )).thenAnswer((invocation) async {
          await (invocation.namedArguments[const Symbol("loggedOut")]
              as Future<void> Function(Exception?))(fakeException);
        });

        //registers listeners
        UserStateObserver(mockAppRouter);

        verify(() => mockAppRouter
            .replaceAll(any(that: contains(isA<SplashRoute>())))).called(1);

        await untilCalled(() => mockAppRouter.replaceAll(any(
            that: contains(isA<LoginRoute>().having(
                (p0) => p0.args?.exception, "exception", fakeException)))));
      });
    });
  });
}
