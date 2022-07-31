// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'login_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$LoginStateTearOff {
  const _$LoginStateTearOff();

  _LoginPromptState prompting() {
    return _LoginPromptState();
  }

  _LoginLoadingState loading() {
    return _LoginLoadingState();
  }

  _LoginLoggedInState loggedIn() {
    return _LoginLoggedInState();
  }
}

/// @nodoc
const $LoginState = _$LoginStateTearOff();

/// @nodoc
mixin _$LoginState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() prompting,
    required TResult Function() loading,
    required TResult Function() loggedIn,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? prompting,
    TResult Function()? loading,
    TResult Function()? loggedIn,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? prompting,
    TResult Function()? loading,
    TResult Function()? loggedIn,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoginPromptState value) prompting,
    required TResult Function(_LoginLoadingState value) loading,
    required TResult Function(_LoginLoggedInState value) loggedIn,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_LoginPromptState value)? prompting,
    TResult Function(_LoginLoadingState value)? loading,
    TResult Function(_LoginLoggedInState value)? loggedIn,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoginPromptState value)? prompting,
    TResult Function(_LoginLoadingState value)? loading,
    TResult Function(_LoginLoggedInState value)? loggedIn,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoginStateCopyWith<$Res> {
  factory $LoginStateCopyWith(
          LoginState value, $Res Function(LoginState) then) =
      _$LoginStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$LoginStateCopyWithImpl<$Res> implements $LoginStateCopyWith<$Res> {
  _$LoginStateCopyWithImpl(this._value, this._then);

  final LoginState _value;
  // ignore: unused_field
  final $Res Function(LoginState) _then;
}

/// @nodoc
abstract class _$LoginPromptStateCopyWith<$Res> {
  factory _$LoginPromptStateCopyWith(
          _LoginPromptState value, $Res Function(_LoginPromptState) then) =
      __$LoginPromptStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$LoginPromptStateCopyWithImpl<$Res>
    extends _$LoginStateCopyWithImpl<$Res>
    implements _$LoginPromptStateCopyWith<$Res> {
  __$LoginPromptStateCopyWithImpl(
      _LoginPromptState _value, $Res Function(_LoginPromptState) _then)
      : super(_value, (v) => _then(v as _LoginPromptState));

  @override
  _LoginPromptState get _value => super._value as _LoginPromptState;
}

/// @nodoc

class _$_LoginPromptState implements _LoginPromptState {
  _$_LoginPromptState();

  @override
  String toString() {
    return 'LoginState.prompting()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _LoginPromptState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() prompting,
    required TResult Function() loading,
    required TResult Function() loggedIn,
  }) {
    return prompting();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? prompting,
    TResult Function()? loading,
    TResult Function()? loggedIn,
  }) {
    return prompting?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? prompting,
    TResult Function()? loading,
    TResult Function()? loggedIn,
    required TResult orElse(),
  }) {
    if (prompting != null) {
      return prompting();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoginPromptState value) prompting,
    required TResult Function(_LoginLoadingState value) loading,
    required TResult Function(_LoginLoggedInState value) loggedIn,
  }) {
    return prompting(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_LoginPromptState value)? prompting,
    TResult Function(_LoginLoadingState value)? loading,
    TResult Function(_LoginLoggedInState value)? loggedIn,
  }) {
    return prompting?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoginPromptState value)? prompting,
    TResult Function(_LoginLoadingState value)? loading,
    TResult Function(_LoginLoggedInState value)? loggedIn,
    required TResult orElse(),
  }) {
    if (prompting != null) {
      return prompting(this);
    }
    return orElse();
  }
}

abstract class _LoginPromptState implements LoginState {
  factory _LoginPromptState() = _$_LoginPromptState;
}

/// @nodoc
abstract class _$LoginLoadingStateCopyWith<$Res> {
  factory _$LoginLoadingStateCopyWith(
          _LoginLoadingState value, $Res Function(_LoginLoadingState) then) =
      __$LoginLoadingStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$LoginLoadingStateCopyWithImpl<$Res>
    extends _$LoginStateCopyWithImpl<$Res>
    implements _$LoginLoadingStateCopyWith<$Res> {
  __$LoginLoadingStateCopyWithImpl(
      _LoginLoadingState _value, $Res Function(_LoginLoadingState) _then)
      : super(_value, (v) => _then(v as _LoginLoadingState));

  @override
  _LoginLoadingState get _value => super._value as _LoginLoadingState;
}

/// @nodoc

class _$_LoginLoadingState implements _LoginLoadingState {
  _$_LoginLoadingState();

  @override
  String toString() {
    return 'LoginState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _LoginLoadingState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() prompting,
    required TResult Function() loading,
    required TResult Function() loggedIn,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? prompting,
    TResult Function()? loading,
    TResult Function()? loggedIn,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? prompting,
    TResult Function()? loading,
    TResult Function()? loggedIn,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoginPromptState value) prompting,
    required TResult Function(_LoginLoadingState value) loading,
    required TResult Function(_LoginLoggedInState value) loggedIn,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_LoginPromptState value)? prompting,
    TResult Function(_LoginLoadingState value)? loading,
    TResult Function(_LoginLoggedInState value)? loggedIn,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoginPromptState value)? prompting,
    TResult Function(_LoginLoadingState value)? loading,
    TResult Function(_LoginLoggedInState value)? loggedIn,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _LoginLoadingState implements LoginState {
  factory _LoginLoadingState() = _$_LoginLoadingState;
}

/// @nodoc
abstract class _$LoginLoggedInStateCopyWith<$Res> {
  factory _$LoginLoggedInStateCopyWith(
          _LoginLoggedInState value, $Res Function(_LoginLoggedInState) then) =
      __$LoginLoggedInStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$LoginLoggedInStateCopyWithImpl<$Res>
    extends _$LoginStateCopyWithImpl<$Res>
    implements _$LoginLoggedInStateCopyWith<$Res> {
  __$LoginLoggedInStateCopyWithImpl(
      _LoginLoggedInState _value, $Res Function(_LoginLoggedInState) _then)
      : super(_value, (v) => _then(v as _LoginLoggedInState));

  @override
  _LoginLoggedInState get _value => super._value as _LoginLoggedInState;
}

/// @nodoc

class _$_LoginLoggedInState implements _LoginLoggedInState {
  _$_LoginLoggedInState();

  @override
  String toString() {
    return 'LoginState.loggedIn()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _LoginLoggedInState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() prompting,
    required TResult Function() loading,
    required TResult Function() loggedIn,
  }) {
    return loggedIn();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? prompting,
    TResult Function()? loading,
    TResult Function()? loggedIn,
  }) {
    return loggedIn?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? prompting,
    TResult Function()? loading,
    TResult Function()? loggedIn,
    required TResult orElse(),
  }) {
    if (loggedIn != null) {
      return loggedIn();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoginPromptState value) prompting,
    required TResult Function(_LoginLoadingState value) loading,
    required TResult Function(_LoginLoggedInState value) loggedIn,
  }) {
    return loggedIn(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_LoginPromptState value)? prompting,
    TResult Function(_LoginLoadingState value)? loading,
    TResult Function(_LoginLoggedInState value)? loggedIn,
  }) {
    return loggedIn?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoginPromptState value)? prompting,
    TResult Function(_LoginLoadingState value)? loading,
    TResult Function(_LoginLoggedInState value)? loggedIn,
    required TResult orElse(),
  }) {
    if (loggedIn != null) {
      return loggedIn(this);
    }
    return orElse();
  }
}

abstract class _LoginLoggedInState implements LoginState {
  factory _LoginLoggedInState() = _$_LoginLoggedInState;
}
