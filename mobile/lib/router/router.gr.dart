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
import 'package:auto_route/auto_route.dart' as _i4;
import 'package:flutter/material.dart' as _i5;
import 'package:flutter/widgets.dart' as _i7;
import 'package:gametime/pages/home/home_page.dart' as _i3;
import 'package:gametime/pages/login/view/login_page.dart' as _i2;
import 'package:gametime/pages/splash/splash_page.dart' as _i1;
import 'package:gametime/router/router.dart' as _i6;

class AppRouter extends _i4.RootStackRouter {
  AppRouter([_i5.GlobalKey<_i5.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i4.PageFactory> pagesMap = {
    SplashRoute.name: (routeData) {
      final args = routeData.argsAs<SplashRouteArgs>(
          orElse: () => const SplashRouteArgs());
      return _i4.CustomPage<dynamic>(
          routeData: routeData,
          child: _i1.SplashPage(key: args.key, exception: args.exception),
          transitionsBuilder: _i6.noAnimationTransition,
          opaque: true,
          barrierDismissible: false);
    },
    LoginRoute.name: (routeData) {
      final args = routeData.argsAs<LoginRouteArgs>(
          orElse: () => const LoginRouteArgs());
      return _i4.CustomPage<dynamic>(
          routeData: routeData,
          child: _i2.LoginPage(key: args.key, exception: args.exception),
          transitionsBuilder: _i6.noAnimationTransition,
          opaque: true,
          barrierDismissible: false);
    },
    HomeRoute.name: (routeData) {
      return _i4.CustomPage<dynamic>(
          routeData: routeData,
          child: const _i3.HomePage(),
          transitionsBuilder: _i6.noAnimationTransition,
          opaque: true,
          barrierDismissible: false);
    }
  };

  @override
  List<_i4.RouteConfig> get routes => [
        _i4.RouteConfig(SplashRoute.name, path: '/'),
        _i4.RouteConfig(LoginRoute.name, path: '/login'),
        _i4.RouteConfig(HomeRoute.name, path: '/home')
      ];
}

/// generated route for
/// [_i1.SplashPage]
class SplashRoute extends _i4.PageRouteInfo<SplashRouteArgs> {
  SplashRoute({_i7.Key? key, Exception? exception})
      : super(SplashRoute.name,
            path: '/', args: SplashRouteArgs(key: key, exception: exception));

  static const String name = 'SplashRoute';
}

class SplashRouteArgs {
  const SplashRouteArgs({this.key, this.exception});

  final _i7.Key? key;

  final Exception? exception;

  @override
  String toString() {
    return 'SplashRouteArgs{key: $key, exception: $exception}';
  }
}

/// generated route for
/// [_i2.LoginPage]
class LoginRoute extends _i4.PageRouteInfo<LoginRouteArgs> {
  LoginRoute({_i7.Key? key, Exception? exception})
      : super(LoginRoute.name,
            path: '/login',
            args: LoginRouteArgs(key: key, exception: exception));

  static const String name = 'LoginRoute';
}

class LoginRouteArgs {
  const LoginRouteArgs({this.key, this.exception});

  final _i7.Key? key;

  final Exception? exception;

  @override
  String toString() {
    return 'LoginRouteArgs{key: $key, exception: $exception}';
  }
}

/// generated route for
/// [_i3.HomePage]
class HomeRoute extends _i4.PageRouteInfo<void> {
  const HomeRoute() : super(HomeRoute.name, path: '/home');

  static const String name = 'HomeRoute';
}
