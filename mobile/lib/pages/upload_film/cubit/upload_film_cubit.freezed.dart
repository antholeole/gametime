// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'upload_film_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$UploadFilmStateTearOff {
  const _$UploadFilmStateTearOff();

  _UploadFilmStatePrompt prompt({Exception? exception}) {
    return _UploadFilmStatePrompt(
      exception: exception,
    );
  }

  _UploadFilmStateDrag drag({Exception? exception}) {
    return _UploadFilmStateDrag(
      exception: exception,
    );
  }

  _UploadFilmStateWithFilm withFilm() {
    return const _UploadFilmStateWithFilm();
  }
}

/// @nodoc
const $UploadFilmState = _$UploadFilmStateTearOff();

/// @nodoc
mixin _$UploadFilmState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Exception? exception) prompt,
    required TResult Function(Exception? exception) drag,
    required TResult Function() withFilm,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Exception? exception)? prompt,
    TResult Function(Exception? exception)? drag,
    TResult Function()? withFilm,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Exception? exception)? prompt,
    TResult Function(Exception? exception)? drag,
    TResult Function()? withFilm,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UploadFilmStatePrompt value) prompt,
    required TResult Function(_UploadFilmStateDrag value) drag,
    required TResult Function(_UploadFilmStateWithFilm value) withFilm,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_UploadFilmStatePrompt value)? prompt,
    TResult Function(_UploadFilmStateDrag value)? drag,
    TResult Function(_UploadFilmStateWithFilm value)? withFilm,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UploadFilmStatePrompt value)? prompt,
    TResult Function(_UploadFilmStateDrag value)? drag,
    TResult Function(_UploadFilmStateWithFilm value)? withFilm,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UploadFilmStateCopyWith<$Res> {
  factory $UploadFilmStateCopyWith(
          UploadFilmState value, $Res Function(UploadFilmState) then) =
      _$UploadFilmStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$UploadFilmStateCopyWithImpl<$Res>
    implements $UploadFilmStateCopyWith<$Res> {
  _$UploadFilmStateCopyWithImpl(this._value, this._then);

  final UploadFilmState _value;
  // ignore: unused_field
  final $Res Function(UploadFilmState) _then;
}

/// @nodoc
abstract class _$UploadFilmStatePromptCopyWith<$Res> {
  factory _$UploadFilmStatePromptCopyWith(_UploadFilmStatePrompt value,
          $Res Function(_UploadFilmStatePrompt) then) =
      __$UploadFilmStatePromptCopyWithImpl<$Res>;
  $Res call({Exception? exception});
}

/// @nodoc
class __$UploadFilmStatePromptCopyWithImpl<$Res>
    extends _$UploadFilmStateCopyWithImpl<$Res>
    implements _$UploadFilmStatePromptCopyWith<$Res> {
  __$UploadFilmStatePromptCopyWithImpl(_UploadFilmStatePrompt _value,
      $Res Function(_UploadFilmStatePrompt) _then)
      : super(_value, (v) => _then(v as _UploadFilmStatePrompt));

  @override
  _UploadFilmStatePrompt get _value => super._value as _UploadFilmStatePrompt;

  @override
  $Res call({
    Object? exception = freezed,
  }) {
    return _then(_UploadFilmStatePrompt(
      exception: exception == freezed
          ? _value.exception
          : exception // ignore: cast_nullable_to_non_nullable
              as Exception?,
    ));
  }
}

/// @nodoc

class _$_UploadFilmStatePrompt extends _UploadFilmStatePrompt {
  const _$_UploadFilmStatePrompt({this.exception}) : super._();

  @override
  final Exception? exception;

  @override
  String toString() {
    return 'UploadFilmState.prompt(exception: $exception)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _UploadFilmStatePrompt &&
            const DeepCollectionEquality().equals(other.exception, exception));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(exception));

  @JsonKey(ignore: true)
  @override
  _$UploadFilmStatePromptCopyWith<_UploadFilmStatePrompt> get copyWith =>
      __$UploadFilmStatePromptCopyWithImpl<_UploadFilmStatePrompt>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Exception? exception) prompt,
    required TResult Function(Exception? exception) drag,
    required TResult Function() withFilm,
  }) {
    return prompt(exception);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Exception? exception)? prompt,
    TResult Function(Exception? exception)? drag,
    TResult Function()? withFilm,
  }) {
    return prompt?.call(exception);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Exception? exception)? prompt,
    TResult Function(Exception? exception)? drag,
    TResult Function()? withFilm,
    required TResult orElse(),
  }) {
    if (prompt != null) {
      return prompt(exception);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UploadFilmStatePrompt value) prompt,
    required TResult Function(_UploadFilmStateDrag value) drag,
    required TResult Function(_UploadFilmStateWithFilm value) withFilm,
  }) {
    return prompt(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_UploadFilmStatePrompt value)? prompt,
    TResult Function(_UploadFilmStateDrag value)? drag,
    TResult Function(_UploadFilmStateWithFilm value)? withFilm,
  }) {
    return prompt?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UploadFilmStatePrompt value)? prompt,
    TResult Function(_UploadFilmStateDrag value)? drag,
    TResult Function(_UploadFilmStateWithFilm value)? withFilm,
    required TResult orElse(),
  }) {
    if (prompt != null) {
      return prompt(this);
    }
    return orElse();
  }
}

abstract class _UploadFilmStatePrompt extends UploadFilmState {
  const factory _UploadFilmStatePrompt({Exception? exception}) =
      _$_UploadFilmStatePrompt;
  const _UploadFilmStatePrompt._() : super._();

  Exception? get exception;
  @JsonKey(ignore: true)
  _$UploadFilmStatePromptCopyWith<_UploadFilmStatePrompt> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$UploadFilmStateDragCopyWith<$Res> {
  factory _$UploadFilmStateDragCopyWith(_UploadFilmStateDrag value,
          $Res Function(_UploadFilmStateDrag) then) =
      __$UploadFilmStateDragCopyWithImpl<$Res>;
  $Res call({Exception? exception});
}

/// @nodoc
class __$UploadFilmStateDragCopyWithImpl<$Res>
    extends _$UploadFilmStateCopyWithImpl<$Res>
    implements _$UploadFilmStateDragCopyWith<$Res> {
  __$UploadFilmStateDragCopyWithImpl(
      _UploadFilmStateDrag _value, $Res Function(_UploadFilmStateDrag) _then)
      : super(_value, (v) => _then(v as _UploadFilmStateDrag));

  @override
  _UploadFilmStateDrag get _value => super._value as _UploadFilmStateDrag;

  @override
  $Res call({
    Object? exception = freezed,
  }) {
    return _then(_UploadFilmStateDrag(
      exception: exception == freezed
          ? _value.exception
          : exception // ignore: cast_nullable_to_non_nullable
              as Exception?,
    ));
  }
}

/// @nodoc

class _$_UploadFilmStateDrag extends _UploadFilmStateDrag {
  const _$_UploadFilmStateDrag({this.exception}) : super._();

  @override
  final Exception? exception;

  @override
  String toString() {
    return 'UploadFilmState.drag(exception: $exception)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _UploadFilmStateDrag &&
            const DeepCollectionEquality().equals(other.exception, exception));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(exception));

  @JsonKey(ignore: true)
  @override
  _$UploadFilmStateDragCopyWith<_UploadFilmStateDrag> get copyWith =>
      __$UploadFilmStateDragCopyWithImpl<_UploadFilmStateDrag>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Exception? exception) prompt,
    required TResult Function(Exception? exception) drag,
    required TResult Function() withFilm,
  }) {
    return drag(exception);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Exception? exception)? prompt,
    TResult Function(Exception? exception)? drag,
    TResult Function()? withFilm,
  }) {
    return drag?.call(exception);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Exception? exception)? prompt,
    TResult Function(Exception? exception)? drag,
    TResult Function()? withFilm,
    required TResult orElse(),
  }) {
    if (drag != null) {
      return drag(exception);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UploadFilmStatePrompt value) prompt,
    required TResult Function(_UploadFilmStateDrag value) drag,
    required TResult Function(_UploadFilmStateWithFilm value) withFilm,
  }) {
    return drag(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_UploadFilmStatePrompt value)? prompt,
    TResult Function(_UploadFilmStateDrag value)? drag,
    TResult Function(_UploadFilmStateWithFilm value)? withFilm,
  }) {
    return drag?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UploadFilmStatePrompt value)? prompt,
    TResult Function(_UploadFilmStateDrag value)? drag,
    TResult Function(_UploadFilmStateWithFilm value)? withFilm,
    required TResult orElse(),
  }) {
    if (drag != null) {
      return drag(this);
    }
    return orElse();
  }
}

abstract class _UploadFilmStateDrag extends UploadFilmState {
  const factory _UploadFilmStateDrag({Exception? exception}) =
      _$_UploadFilmStateDrag;
  const _UploadFilmStateDrag._() : super._();

  Exception? get exception;
  @JsonKey(ignore: true)
  _$UploadFilmStateDragCopyWith<_UploadFilmStateDrag> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$UploadFilmStateWithFilmCopyWith<$Res> {
  factory _$UploadFilmStateWithFilmCopyWith(_UploadFilmStateWithFilm value,
          $Res Function(_UploadFilmStateWithFilm) then) =
      __$UploadFilmStateWithFilmCopyWithImpl<$Res>;
}

/// @nodoc
class __$UploadFilmStateWithFilmCopyWithImpl<$Res>
    extends _$UploadFilmStateCopyWithImpl<$Res>
    implements _$UploadFilmStateWithFilmCopyWith<$Res> {
  __$UploadFilmStateWithFilmCopyWithImpl(_UploadFilmStateWithFilm _value,
      $Res Function(_UploadFilmStateWithFilm) _then)
      : super(_value, (v) => _then(v as _UploadFilmStateWithFilm));

  @override
  _UploadFilmStateWithFilm get _value =>
      super._value as _UploadFilmStateWithFilm;
}

/// @nodoc

class _$_UploadFilmStateWithFilm extends _UploadFilmStateWithFilm {
  const _$_UploadFilmStateWithFilm() : super._();

  @override
  String toString() {
    return 'UploadFilmState.withFilm()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _UploadFilmStateWithFilm);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Exception? exception) prompt,
    required TResult Function(Exception? exception) drag,
    required TResult Function() withFilm,
  }) {
    return withFilm();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Exception? exception)? prompt,
    TResult Function(Exception? exception)? drag,
    TResult Function()? withFilm,
  }) {
    return withFilm?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Exception? exception)? prompt,
    TResult Function(Exception? exception)? drag,
    TResult Function()? withFilm,
    required TResult orElse(),
  }) {
    if (withFilm != null) {
      return withFilm();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UploadFilmStatePrompt value) prompt,
    required TResult Function(_UploadFilmStateDrag value) drag,
    required TResult Function(_UploadFilmStateWithFilm value) withFilm,
  }) {
    return withFilm(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_UploadFilmStatePrompt value)? prompt,
    TResult Function(_UploadFilmStateDrag value)? drag,
    TResult Function(_UploadFilmStateWithFilm value)? withFilm,
  }) {
    return withFilm?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UploadFilmStatePrompt value)? prompt,
    TResult Function(_UploadFilmStateDrag value)? drag,
    TResult Function(_UploadFilmStateWithFilm value)? withFilm,
    required TResult orElse(),
  }) {
    if (withFilm != null) {
      return withFilm(this);
    }
    return orElse();
  }
}

abstract class _UploadFilmStateWithFilm extends UploadFilmState {
  const factory _UploadFilmStateWithFilm() = _$_UploadFilmStateWithFilm;
  const _UploadFilmStateWithFilm._() : super._();
}
