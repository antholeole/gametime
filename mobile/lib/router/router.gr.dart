// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i5;
import 'package:flutter/material.dart' as _i6;
import 'package:flutter/widgets.dart' as _i8;
import 'package:gametime/data/user_data.dart' as _i9;
import 'package:gametime/pages/home/features/widgets/upload_film_modal.dart'
    as _i4;
import 'package:gametime/pages/home/film_page.dart' as _i3;
import 'package:gametime/pages/login/view/login_page.dart' as _i2;
import 'package:gametime/pages/splash/splash_page.dart' as _i1;
import 'package:gametime/router/router.dart' as _i7;

class AppRouter extends _i5.RootStackRouter {
  AppRouter([_i6.GlobalKey<_i6.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i5.PageFactory> pagesMap = {
    SplashRoute.name: (routeData) {
      final args = routeData.argsAs<SplashRouteArgs>(
          orElse: () => const SplashRouteArgs());
      return _i5.CustomPage<dynamic>(
        routeData: routeData,
        child: _i1.SplashPage(
          key: args.key,
          exception: args.exception,
        ),
        transitionsBuilder: _i7.noAnimationTransition,
        opaque: true,
        barrierDismissible: false,
      );
    },
    LoginRoute.name: (routeData) {
      final args = routeData.argsAs<LoginRouteArgs>(
          orElse: () => const LoginRouteArgs());
      return _i5.CustomPage<dynamic>(
        routeData: routeData,
        child: _i2.LoginPage(
          key: args.key,
          exception: args.exception,
        ),
        transitionsBuilder: _i7.noAnimationTransition,
        opaque: true,
        barrierDismissible: false,
      );
    },
    HomeRoute.name: (routeData) {
      final args = routeData.argsAs<HomeRouteArgs>();
      return _i5.CustomPage<dynamic>(
        routeData: routeData,
        child: _i3.HomePage(
          key: args.key,
          userData: args.userData,
        ),
        transitionsBuilder: _i7.noAnimationTransition,
        opaque: true,
        barrierDismissible: false,
      );
    },
    UploadFilmModal.name: (routeData) {
      return _i5.CustomPage<dynamic>(
        routeData: routeData,
        child: const _i4.UploadFilmModal(),
        opaque: true,
        barrierDismissible: false,
      );
    },
  };

  @override
  List<_i5.RouteConfig> get routes => [
        _i5.RouteConfig(
          SplashRoute.name,
          path: '/',
        ),
        _i5.RouteConfig(
          LoginRoute.name,
          path: '/login',
        ),
        _i5.RouteConfig(
          HomeRoute.name,
          path: '/home',
          children: [
            _i5.RouteConfig(
              UploadFilmModal.name,
              path: 'upload',
              parent: HomeRoute.name,
            )
          ],
        ),
      ];
}

/// generated route for
/// [_i1.SplashPage]
class SplashRoute extends _i5.PageRouteInfo<SplashRouteArgs> {
  SplashRoute({
    _i8.Key? key,
    Exception? exception,
  }) : super(
          SplashRoute.name,
          path: '/',
          args: SplashRouteArgs(
            key: key,
            exception: exception,
          ),
        );

  static const String name = 'SplashRoute';
}

class SplashRouteArgs {
  const SplashRouteArgs({
    this.key,
    this.exception,
  });

  final _i8.Key? key;

  final Exception? exception;

  @override
  String toString() {
    return 'SplashRouteArgs{key: $key, exception: $exception}';
  }
}

/// generated route for
/// [_i2.LoginPage]
class LoginRoute extends _i5.PageRouteInfo<LoginRouteArgs> {
  LoginRoute({
    _i8.Key? key,
    Exception? exception,
  }) : super(
          LoginRoute.name,
          path: '/login',
          args: LoginRouteArgs(
            key: key,
            exception: exception,
          ),
        );

  static const String name = 'LoginRoute';
}

class LoginRouteArgs {
  const LoginRouteArgs({
    this.key,
    this.exception,
  });

  final _i8.Key? key;

  final Exception? exception;

  @override
  String toString() {
    return 'LoginRouteArgs{key: $key, exception: $exception}';
  }
}

/// generated route for
/// [_i3.HomePage]
class HomeRoute extends _i5.PageRouteInfo<HomeRouteArgs> {
  HomeRoute({
    _i8.Key? key,
    required _i9.UserData userData,
    List<_i5.PageRouteInfo>? children,
  }) : super(
          HomeRoute.name,
          path: '/home',
          args: HomeRouteArgs(
            key: key,
            userData: userData,
          ),
          initialChildren: children,
        );

  static const String name = 'HomeRoute';
}

class HomeRouteArgs {
  const HomeRouteArgs({
    this.key,
    required this.userData,
  });

  final _i8.Key? key;

  final _i9.UserData userData;

  @override
  String toString() {
    return 'HomeRouteArgs{key: $key, userData: $userData}';
  }
}

/// generated route for
/// [_i4.UploadFilmModal]
class UploadFilmModal extends _i5.PageRouteInfo<void> {
  const UploadFilmModal()
      : super(
          UploadFilmModal.name,
          path: 'upload',
        );

  static const String name = 'UploadFilmModal';
}
