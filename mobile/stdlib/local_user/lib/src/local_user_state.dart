import 'package:uuid_type/uuid_type.dart';

abstract class LocalUserState {
  const LocalUserState();
}

class LocalUserLoggedInState<T> extends LocalUserState {
  final UuidType userId;
  final T extraData;

  const LocalUserLoggedInState(this.userId, this.extraData);
}

class LocalUserLoadingState extends LocalUserState {
  const LocalUserLoadingState();
}

class LocalUserLoggedOutState extends LocalUserState {
  final Exception? withException;

  const LocalUserLoggedOutState({this.withException});
}
