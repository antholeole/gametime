// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'tokens.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Tokens _$TokensFromJson(Map<String, dynamic> json) {
  return _Tokens.fromJson(json);
}

/// @nodoc
class _$TokensTearOff {
  const _$TokensTearOff();

  _Tokens call(
      {@UuidConverter() required UuidType userId,
      required String refreshToken}) {
    return _Tokens(
      userId: userId,
      refreshToken: refreshToken,
    );
  }

  Tokens fromJson(Map<String, Object?> json) {
    return Tokens.fromJson(json);
  }
}

/// @nodoc
const $Tokens = _$TokensTearOff();

/// @nodoc
mixin _$Tokens {
  @UuidConverter()
  UuidType get userId => throw _privateConstructorUsedError;
  String get refreshToken => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TokensCopyWith<Tokens> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TokensCopyWith<$Res> {
  factory $TokensCopyWith(Tokens value, $Res Function(Tokens) then) =
      _$TokensCopyWithImpl<$Res>;
  $Res call({@UuidConverter() UuidType userId, String refreshToken});
}

/// @nodoc
class _$TokensCopyWithImpl<$Res> implements $TokensCopyWith<$Res> {
  _$TokensCopyWithImpl(this._value, this._then);

  final Tokens _value;
  // ignore: unused_field
  final $Res Function(Tokens) _then;

  @override
  $Res call({
    Object? userId = freezed,
    Object? refreshToken = freezed,
  }) {
    return _then(_value.copyWith(
      userId: userId == freezed
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as UuidType,
      refreshToken: refreshToken == freezed
          ? _value.refreshToken
          : refreshToken // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$TokensCopyWith<$Res> implements $TokensCopyWith<$Res> {
  factory _$TokensCopyWith(_Tokens value, $Res Function(_Tokens) then) =
      __$TokensCopyWithImpl<$Res>;
  @override
  $Res call({@UuidConverter() UuidType userId, String refreshToken});
}

/// @nodoc
class __$TokensCopyWithImpl<$Res> extends _$TokensCopyWithImpl<$Res>
    implements _$TokensCopyWith<$Res> {
  __$TokensCopyWithImpl(_Tokens _value, $Res Function(_Tokens) _then)
      : super(_value, (v) => _then(v as _Tokens));

  @override
  _Tokens get _value => super._value as _Tokens;

  @override
  $Res call({
    Object? userId = freezed,
    Object? refreshToken = freezed,
  }) {
    return _then(_Tokens(
      userId: userId == freezed
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as UuidType,
      refreshToken: refreshToken == freezed
          ? _value.refreshToken
          : refreshToken // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Tokens implements _Tokens {
  _$_Tokens(
      {@UuidConverter() required this.userId, required this.refreshToken});

  factory _$_Tokens.fromJson(Map<String, dynamic> json) =>
      _$$_TokensFromJson(json);

  @override
  @UuidConverter()
  final UuidType userId;
  @override
  final String refreshToken;

  @override
  String toString() {
    return 'Tokens(userId: $userId, refreshToken: $refreshToken)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Tokens &&
            const DeepCollectionEquality().equals(other.userId, userId) &&
            const DeepCollectionEquality()
                .equals(other.refreshToken, refreshToken));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(userId),
      const DeepCollectionEquality().hash(refreshToken));

  @JsonKey(ignore: true)
  @override
  _$TokensCopyWith<_Tokens> get copyWith =>
      __$TokensCopyWithImpl<_Tokens>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_TokensToJson(this);
  }
}

abstract class _Tokens implements Tokens {
  factory _Tokens(
      {@UuidConverter() required UuidType userId,
      required String refreshToken}) = _$_Tokens;

  factory _Tokens.fromJson(Map<String, dynamic> json) = _$_Tokens.fromJson;

  @override
  @UuidConverter()
  UuidType get userId;
  @override
  String get refreshToken;
  @override
  @JsonKey(ignore: true)
  _$TokensCopyWith<_Tokens> get copyWith => throw _privateConstructorUsedError;
}
