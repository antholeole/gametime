// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'film_list_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$FilmListStateTearOff {
  const _$FilmListStateTearOff();

  _FilmListStateLoading loading() {
    return const _FilmListStateLoading();
  }

  _FilmListStateWithFilm withFilm(
      {required List<Film> film, Exception? exception}) {
    return _FilmListStateWithFilm(
      film: film,
      exception: exception,
    );
  }
}

/// @nodoc
const $FilmListState = _$FilmListStateTearOff();

/// @nodoc
mixin _$FilmListState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(List<Film> film, Exception? exception) withFilm,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<Film> film, Exception? exception)? withFilm,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<Film> film, Exception? exception)? withFilm,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FilmListStateLoading value) loading,
    required TResult Function(_FilmListStateWithFilm value) withFilm,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_FilmListStateLoading value)? loading,
    TResult Function(_FilmListStateWithFilm value)? withFilm,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FilmListStateLoading value)? loading,
    TResult Function(_FilmListStateWithFilm value)? withFilm,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FilmListStateCopyWith<$Res> {
  factory $FilmListStateCopyWith(
          FilmListState value, $Res Function(FilmListState) then) =
      _$FilmListStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$FilmListStateCopyWithImpl<$Res>
    implements $FilmListStateCopyWith<$Res> {
  _$FilmListStateCopyWithImpl(this._value, this._then);

  final FilmListState _value;
  // ignore: unused_field
  final $Res Function(FilmListState) _then;
}

/// @nodoc
abstract class _$FilmListStateLoadingCopyWith<$Res> {
  factory _$FilmListStateLoadingCopyWith(_FilmListStateLoading value,
          $Res Function(_FilmListStateLoading) then) =
      __$FilmListStateLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$FilmListStateLoadingCopyWithImpl<$Res>
    extends _$FilmListStateCopyWithImpl<$Res>
    implements _$FilmListStateLoadingCopyWith<$Res> {
  __$FilmListStateLoadingCopyWithImpl(
      _FilmListStateLoading _value, $Res Function(_FilmListStateLoading) _then)
      : super(_value, (v) => _then(v as _FilmListStateLoading));

  @override
  _FilmListStateLoading get _value => super._value as _FilmListStateLoading;
}

/// @nodoc

class _$_FilmListStateLoading extends _FilmListStateLoading {
  const _$_FilmListStateLoading() : super._();

  @override
  String toString() {
    return 'FilmListState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _FilmListStateLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(List<Film> film, Exception? exception) withFilm,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<Film> film, Exception? exception)? withFilm,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<Film> film, Exception? exception)? withFilm,
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
    required TResult Function(_FilmListStateLoading value) loading,
    required TResult Function(_FilmListStateWithFilm value) withFilm,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_FilmListStateLoading value)? loading,
    TResult Function(_FilmListStateWithFilm value)? withFilm,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FilmListStateLoading value)? loading,
    TResult Function(_FilmListStateWithFilm value)? withFilm,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _FilmListStateLoading extends FilmListState {
  const factory _FilmListStateLoading() = _$_FilmListStateLoading;
  const _FilmListStateLoading._() : super._();
}

/// @nodoc
abstract class _$FilmListStateWithFilmCopyWith<$Res> {
  factory _$FilmListStateWithFilmCopyWith(_FilmListStateWithFilm value,
          $Res Function(_FilmListStateWithFilm) then) =
      __$FilmListStateWithFilmCopyWithImpl<$Res>;
  $Res call({List<Film> film, Exception? exception});
}

/// @nodoc
class __$FilmListStateWithFilmCopyWithImpl<$Res>
    extends _$FilmListStateCopyWithImpl<$Res>
    implements _$FilmListStateWithFilmCopyWith<$Res> {
  __$FilmListStateWithFilmCopyWithImpl(_FilmListStateWithFilm _value,
      $Res Function(_FilmListStateWithFilm) _then)
      : super(_value, (v) => _then(v as _FilmListStateWithFilm));

  @override
  _FilmListStateWithFilm get _value => super._value as _FilmListStateWithFilm;

  @override
  $Res call({
    Object? film = freezed,
    Object? exception = freezed,
  }) {
    return _then(_FilmListStateWithFilm(
      film: film == freezed
          ? _value.film
          : film // ignore: cast_nullable_to_non_nullable
              as List<Film>,
      exception: exception == freezed
          ? _value.exception
          : exception // ignore: cast_nullable_to_non_nullable
              as Exception?,
    ));
  }
}

/// @nodoc

class _$_FilmListStateWithFilm extends _FilmListStateWithFilm {
  const _$_FilmListStateWithFilm({required this.film, this.exception})
      : super._();

  @override
  final List<Film> film;
  @override
  final Exception? exception;

  @override
  String toString() {
    return 'FilmListState.withFilm(film: $film, exception: $exception)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _FilmListStateWithFilm &&
            const DeepCollectionEquality().equals(other.film, film) &&
            const DeepCollectionEquality().equals(other.exception, exception));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(film),
      const DeepCollectionEquality().hash(exception));

  @JsonKey(ignore: true)
  @override
  _$FilmListStateWithFilmCopyWith<_FilmListStateWithFilm> get copyWith =>
      __$FilmListStateWithFilmCopyWithImpl<_FilmListStateWithFilm>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(List<Film> film, Exception? exception) withFilm,
  }) {
    return withFilm(film, exception);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<Film> film, Exception? exception)? withFilm,
  }) {
    return withFilm?.call(film, exception);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<Film> film, Exception? exception)? withFilm,
    required TResult orElse(),
  }) {
    if (withFilm != null) {
      return withFilm(film, exception);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FilmListStateLoading value) loading,
    required TResult Function(_FilmListStateWithFilm value) withFilm,
  }) {
    return withFilm(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_FilmListStateLoading value)? loading,
    TResult Function(_FilmListStateWithFilm value)? withFilm,
  }) {
    return withFilm?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FilmListStateLoading value)? loading,
    TResult Function(_FilmListStateWithFilm value)? withFilm,
    required TResult orElse(),
  }) {
    if (withFilm != null) {
      return withFilm(this);
    }
    return orElse();
  }
}

abstract class _FilmListStateWithFilm extends FilmListState {
  const factory _FilmListStateWithFilm(
      {required List<Film> film,
      Exception? exception}) = _$_FilmListStateWithFilm;
  const _FilmListStateWithFilm._() : super._();

  List<Film> get film;
  Exception? get exception;
  @JsonKey(ignore: true)
  _$FilmListStateWithFilmCopyWith<_FilmListStateWithFilm> get copyWith =>
      throw _privateConstructorUsedError;
}
