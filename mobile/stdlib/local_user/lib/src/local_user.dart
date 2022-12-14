import 'package:flutter/foundation.dart';
import 'package:local_user/src/local_user_state.dart';
import 'package:local_value/local_value.dart';
import 'package:uuid_type/uuid_type.dart';

class LocalUser<T> extends ChangeNotifier
    implements ValueListenable<LocalUserState> {
  final LocalSingleton<String> _localRefreshToken = LocalSingleton(
    id: 'refresh_token',
    documentType: DocumentType.secure,
  );
  final LocalSingleton<String> _localUserId = LocalSingleton(
    id: 'user_id',
    documentType: DocumentType.secure,
  );
  final LocalSingleton<T> _userData;

  LocalUserState _state = LocalUserLoadingState();

  LocalUser({required LocalSingleton<T> userData}) : _userData = userData;

  /// begins an async process that checks if the user is logged in or not.
  Future<void> determineState() async {
    final List<dynamic> localData;
    try {
      localData = await Future.wait([
        _localRefreshToken.read(),
        _localUserId.read(),
        _userData.read(),
      ]);
    } on Exception catch (e) {
      logOut(withException: e);
      return;
    }

    final String? refreshToken = localData[0];
    final String? userId = localData[1];
    final T? userData = localData[2];

    if (refreshToken == null || userId == null || userData == null) {
      logOut();
    } else {
      logIn(UuidType(userId), refreshToken, userData);
    }
  }

  @override
  LocalUserState get value => _state;

  K? maybeOn<K>({
    K Function(Exception? e)? loggedOut,
    K Function(UuidType userId)? loggedIn,
    K Function()? loading,
  }) {
    if (_state is LocalUserLoggedInState && loggedIn != null) {
      return loggedIn((_state as LocalUserLoggedInState).userId);
    }

    if (_state is LocalUserLoggedOutState && loggedOut != null) {
      return loggedOut((_state as LocalUserLoggedOutState).withException);
    }

    if (_state is LocalUserLoadingState && loading != null) {
      return loading();
    }

    return null;
  }

  K on<K>({
    required K Function(Exception? e) loggedOut,
    required K Function(UuidType, T) loggedIn,
    required K Function() loading,
  }) {
    if (_state is LocalUserLoggedInState) {
      final LocalUserLoggedInState loggedInState =
          _state as LocalUserLoggedInState;
      return loggedIn(loggedInState.userId, loggedInState.extraData);
    }

    if (_state is LocalUserLoggedOutState) {
      return loggedOut((_state as LocalUserLoggedOutState).withException);
    }

    return loading();
  }

  Future<void> logIn(UuidType userId, String refreshToken, T userData) async {
    final shouldNotify = _state is! LocalUserLoggedInState;
    _state = LocalUserLoggedInState(userId, userData);

    await Future.wait([
      _localRefreshToken.write(refreshToken),
      _localUserId.write(userId.toString()),
      _userData.write(userData)
    ]);

    if (shouldNotify) {
      notifyListeners();
    }
  }

  Future<void> logOut({Exception? withException}) async {
    //if we were already logged out, and we aren't forcing one due to an exception
    if (_state is LocalUserLoggedOutState && withException == null) {
      return;
    }

    await Future.wait([
      _localRefreshToken.delete(),
      _localUserId.delete(),
      _userData.delete()
    ]);

    _state = LocalUserLoggedOutState(withException: withException);
    notifyListeners();
  }

  Future<String?> get refreshToken {
    if (_state is LocalUserLoggedInState) {
      return _localRefreshToken.read();
    } else {
      return Future.value(null);
    }
  }
}
