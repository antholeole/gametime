// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'film.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Film _$FilmFromJson(Map<String, dynamic> json) {
  return _Film.fromJson(json);
}

/// @nodoc
class _$FilmTearOff {
  const _$FilmTearOff();

  _Film call(
      {required String name,
      required String comment,
      @UuidJsonTypeConverter() required UuidType id,
      required String accessUrl}) {
    return _Film(
      name: name,
      comment: comment,
      id: id,
      accessUrl: accessUrl,
    );
  }

  Film fromJson(Map<String, Object?> json) {
    return Film.fromJson(json);
  }
}

/// @nodoc
const $Film = _$FilmTearOff();

/// @nodoc
mixin _$Film {
  String get name => throw _privateConstructorUsedError;
  String get comment => throw _privateConstructorUsedError;
  @UuidJsonTypeConverter()
  UuidType get id => throw _privateConstructorUsedError;
  String get accessUrl => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FilmCopyWith<Film> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FilmCopyWith<$Res> {
  factory $FilmCopyWith(Film value, $Res Function(Film) then) =
      _$FilmCopyWithImpl<$Res>;
  $Res call(
      {String name,
      String comment,
      @UuidJsonTypeConverter() UuidType id,
      String accessUrl});
}

/// @nodoc
class _$FilmCopyWithImpl<$Res> implements $FilmCopyWith<$Res> {
  _$FilmCopyWithImpl(this._value, this._then);

  final Film _value;
  // ignore: unused_field
  final $Res Function(Film) _then;

  @override
  $Res call({
    Object? name = freezed,
    Object? comment = freezed,
    Object? id = freezed,
    Object? accessUrl = freezed,
  }) {
    return _then(_value.copyWith(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      comment: comment == freezed
          ? _value.comment
          : comment // ignore: cast_nullable_to_non_nullable
              as String,
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as UuidType,
      accessUrl: accessUrl == freezed
          ? _value.accessUrl
          : accessUrl // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$FilmCopyWith<$Res> implements $FilmCopyWith<$Res> {
  factory _$FilmCopyWith(_Film value, $Res Function(_Film) then) =
      __$FilmCopyWithImpl<$Res>;
  @override
  $Res call(
      {String name,
      String comment,
      @UuidJsonTypeConverter() UuidType id,
      String accessUrl});
}

/// @nodoc
class __$FilmCopyWithImpl<$Res> extends _$FilmCopyWithImpl<$Res>
    implements _$FilmCopyWith<$Res> {
  __$FilmCopyWithImpl(_Film _value, $Res Function(_Film) _then)
      : super(_value, (v) => _then(v as _Film));

  @override
  _Film get _value => super._value as _Film;

  @override
  $Res call({
    Object? name = freezed,
    Object? comment = freezed,
    Object? id = freezed,
    Object? accessUrl = freezed,
  }) {
    return _then(_Film(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      comment: comment == freezed
          ? _value.comment
          : comment // ignore: cast_nullable_to_non_nullable
              as String,
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as UuidType,
      accessUrl: accessUrl == freezed
          ? _value.accessUrl
          : accessUrl // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Film implements _Film {
  _$_Film(
      {required this.name,
      required this.comment,
      @UuidJsonTypeConverter() required this.id,
      required this.accessUrl});

  factory _$_Film.fromJson(Map<String, dynamic> json) => _$$_FilmFromJson(json);

  @override
  final String name;
  @override
  final String comment;
  @override
  @UuidJsonTypeConverter()
  final UuidType id;
  @override
  final String accessUrl;

  @override
  String toString() {
    return 'Film(name: $name, comment: $comment, id: $id, accessUrl: $accessUrl)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Film &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality().equals(other.comment, comment) &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.accessUrl, accessUrl));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(comment),
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(accessUrl));

  @JsonKey(ignore: true)
  @override
  _$FilmCopyWith<_Film> get copyWith =>
      __$FilmCopyWithImpl<_Film>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_FilmToJson(this);
  }
}

abstract class _Film implements Film {
  factory _Film(
      {required String name,
      required String comment,
      @UuidJsonTypeConverter() required UuidType id,
      required String accessUrl}) = _$_Film;

  factory _Film.fromJson(Map<String, dynamic> json) = _$_Film.fromJson;

  @override
  String get name;
  @override
  String get comment;
  @override
  @UuidJsonTypeConverter()
  UuidType get id;
  @override
  String get accessUrl;
  @override
  @JsonKey(ignore: true)
  _$FilmCopyWith<_Film> get copyWith => throw _privateConstructorUsedError;
}
