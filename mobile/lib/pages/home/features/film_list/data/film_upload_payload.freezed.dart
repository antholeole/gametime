// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'film_upload_payload.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$FilmUploadPayloadTearOff {
  const _$FilmUploadPayloadTearOff();

  _FilmUploadPayload call(
      {required String name, required File file, String? description}) {
    return _FilmUploadPayload(
      name: name,
      file: file,
      description: description,
    );
  }
}

/// @nodoc
const $FilmUploadPayload = _$FilmUploadPayloadTearOff();

/// @nodoc
mixin _$FilmUploadPayload {
  String get name => throw _privateConstructorUsedError;
  File get file => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $FilmUploadPayloadCopyWith<FilmUploadPayload> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FilmUploadPayloadCopyWith<$Res> {
  factory $FilmUploadPayloadCopyWith(
          FilmUploadPayload value, $Res Function(FilmUploadPayload) then) =
      _$FilmUploadPayloadCopyWithImpl<$Res>;
  $Res call({String name, File file, String? description});
}

/// @nodoc
class _$FilmUploadPayloadCopyWithImpl<$Res>
    implements $FilmUploadPayloadCopyWith<$Res> {
  _$FilmUploadPayloadCopyWithImpl(this._value, this._then);

  final FilmUploadPayload _value;
  // ignore: unused_field
  final $Res Function(FilmUploadPayload) _then;

  @override
  $Res call({
    Object? name = freezed,
    Object? file = freezed,
    Object? description = freezed,
  }) {
    return _then(_value.copyWith(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      file: file == freezed
          ? _value.file
          : file // ignore: cast_nullable_to_non_nullable
              as File,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$FilmUploadPayloadCopyWith<$Res>
    implements $FilmUploadPayloadCopyWith<$Res> {
  factory _$FilmUploadPayloadCopyWith(
          _FilmUploadPayload value, $Res Function(_FilmUploadPayload) then) =
      __$FilmUploadPayloadCopyWithImpl<$Res>;
  @override
  $Res call({String name, File file, String? description});
}

/// @nodoc
class __$FilmUploadPayloadCopyWithImpl<$Res>
    extends _$FilmUploadPayloadCopyWithImpl<$Res>
    implements _$FilmUploadPayloadCopyWith<$Res> {
  __$FilmUploadPayloadCopyWithImpl(
      _FilmUploadPayload _value, $Res Function(_FilmUploadPayload) _then)
      : super(_value, (v) => _then(v as _FilmUploadPayload));

  @override
  _FilmUploadPayload get _value => super._value as _FilmUploadPayload;

  @override
  $Res call({
    Object? name = freezed,
    Object? file = freezed,
    Object? description = freezed,
  }) {
    return _then(_FilmUploadPayload(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      file: file == freezed
          ? _value.file
          : file // ignore: cast_nullable_to_non_nullable
              as File,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_FilmUploadPayload implements _FilmUploadPayload {
  _$_FilmUploadPayload(
      {required this.name, required this.file, this.description});

  @override
  final String name;
  @override
  final File file;
  @override
  final String? description;

  @override
  String toString() {
    return 'FilmUploadPayload(name: $name, file: $file, description: $description)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _FilmUploadPayload &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality().equals(other.file, file) &&
            const DeepCollectionEquality()
                .equals(other.description, description));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(file),
      const DeepCollectionEquality().hash(description));

  @JsonKey(ignore: true)
  @override
  _$FilmUploadPayloadCopyWith<_FilmUploadPayload> get copyWith =>
      __$FilmUploadPayloadCopyWithImpl<_FilmUploadPayload>(this, _$identity);
}

abstract class _FilmUploadPayload implements FilmUploadPayload {
  factory _FilmUploadPayload(
      {required String name,
      required File file,
      String? description}) = _$_FilmUploadPayload;

  @override
  String get name;
  @override
  File get file;
  @override
  String? get description;
  @override
  @JsonKey(ignore: true)
  _$FilmUploadPayloadCopyWith<_FilmUploadPayload> get copyWith =>
      throw _privateConstructorUsedError;
}
