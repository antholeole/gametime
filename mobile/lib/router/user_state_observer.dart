import 'package:auto_route/auto_route.dart';
import 'package:gametime/configs/base_config.dart';
import 'package:gametime/data/user_data.dart';
import 'package:gametime/router/router.gr.dart';
import 'package:local_user/local_user.dart';

import '../register_services.dart';

class UserStateObserver extends AutoRouterObserver {
  final LocalUser<UserData> _localUser = getIt<LocalUser<UserData>>();
  final Config _config = getIt<Config>();
  final AppRouter _router;

  static const String _authScopeName = 'AUTH_DEP_INJECT_SCOPE';

  UserStateObserver(AppRouter router) : _router = router {
    _localUser.addListener(_didUpdateUserState);
    _localUser.determineState();
  }

  void _didUpdateUserState() {
    _localUser.on(loading: () {
      _router.replaceAll([SplashRoute()]);
    }, loggedOut: (e) async {
      _router.replaceAll([SplashRoute(exception: e)]);
      await getIt.popScopesTill(_authScopeName);
      _router.replaceAll([LoginRoute(exception: e)]);
    }, loggedIn: (userId, userData) {
      getIt.pushNewScope(
        init: (getIt) => registerAuthedServices(_config, getIt),
        scopeName: _authScopeName,
      );
      _router.replaceAll([HomeRoute(userData: userData)]);
    });
  }
}
