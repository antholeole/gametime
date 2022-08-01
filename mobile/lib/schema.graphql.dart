import 'package:json_annotation/json_annotation.dart';
import 'package:uuid_type/uuid_type.dart';
part 'schema.graphql.g.dart';

@JsonSerializable(explicitToJson: true)
class Input$AuthenticateInput {
  Input$AuthenticateInput({this.clientMutationId, required this.token});

  @override
  factory Input$AuthenticateInput.fromJson(Map<String, dynamic> json) =>
      _$Input$AuthenticateInputFromJson(json);

  final String? clientMutationId;

  final String token;

  Map<String, dynamic> toJson() => _$Input$AuthenticateInputToJson(this);
  int get hashCode {
    final l$clientMutationId = clientMutationId;
    final l$token = token;
    return Object.hashAll([l$clientMutationId, l$token]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is Input$AuthenticateInput) || runtimeType != other.runtimeType)
      return false;
    final l$clientMutationId = clientMutationId;
    final lOther$clientMutationId = other.clientMutationId;
    if (l$clientMutationId != lOther$clientMutationId) return false;
    final l$token = token;
    final lOther$token = other.token;
    if (l$token != lOther$token) return false;
    return true;
  }

  CopyWith$Input$AuthenticateInput<Input$AuthenticateInput> get copyWith =>
      CopyWith$Input$AuthenticateInput(this, (i) => i);
}

abstract class CopyWith$Input$AuthenticateInput<TRes> {
  factory CopyWith$Input$AuthenticateInput(Input$AuthenticateInput instance,
          TRes Function(Input$AuthenticateInput) then) =
      _CopyWithImpl$Input$AuthenticateInput;

  factory CopyWith$Input$AuthenticateInput.stub(TRes res) =
      _CopyWithStubImpl$Input$AuthenticateInput;

  TRes call({String? clientMutationId, String? token});
}

class _CopyWithImpl$Input$AuthenticateInput<TRes>
    implements CopyWith$Input$AuthenticateInput<TRes> {
  _CopyWithImpl$Input$AuthenticateInput(this._instance, this._then);

  final Input$AuthenticateInput _instance;

  final TRes Function(Input$AuthenticateInput) _then;

  static const _undefined = {};

  TRes call(
          {Object? clientMutationId = _undefined,
          Object? token = _undefined}) =>
      _then(Input$AuthenticateInput(
          clientMutationId: clientMutationId == _undefined
              ? _instance.clientMutationId
              : (clientMutationId as String?),
          token: token == _undefined || token == null
              ? _instance.token
              : (token as String)));
}

class _CopyWithStubImpl$Input$AuthenticateInput<TRes>
    implements CopyWith$Input$AuthenticateInput<TRes> {
  _CopyWithStubImpl$Input$AuthenticateInput(this._res);

  TRes _res;

  call({String? clientMutationId, String? token}) => _res;
}

@JsonSerializable(explicitToJson: true)
class Input$RefreshInput {
  Input$RefreshInput(
      {this.clientMutationId,
      required this.userId,
      required this.refreshToken});

  @override
  factory Input$RefreshInput.fromJson(Map<String, dynamic> json) =>
      _$Input$RefreshInputFromJson(json);

  final String? clientMutationId;

  @JsonKey(fromJson: uuidTypeFromJson, toJson: uuidTypeToJson)
  final UuidType userId;

  final String refreshToken;

  Map<String, dynamic> toJson() => _$Input$RefreshInputToJson(this);
  int get hashCode {
    final l$clientMutationId = clientMutationId;
    final l$userId = userId;
    final l$refreshToken = refreshToken;
    return Object.hashAll([l$clientMutationId, l$userId, l$refreshToken]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is Input$RefreshInput) || runtimeType != other.runtimeType)
      return false;
    final l$clientMutationId = clientMutationId;
    final lOther$clientMutationId = other.clientMutationId;
    if (l$clientMutationId != lOther$clientMutationId) return false;
    final l$userId = userId;
    final lOther$userId = other.userId;
    if (l$userId != lOther$userId) return false;
    final l$refreshToken = refreshToken;
    final lOther$refreshToken = other.refreshToken;
    if (l$refreshToken != lOther$refreshToken) return false;
    return true;
  }

  CopyWith$Input$RefreshInput<Input$RefreshInput> get copyWith =>
      CopyWith$Input$RefreshInput(this, (i) => i);
}

abstract class CopyWith$Input$RefreshInput<TRes> {
  factory CopyWith$Input$RefreshInput(
          Input$RefreshInput instance, TRes Function(Input$RefreshInput) then) =
      _CopyWithImpl$Input$RefreshInput;

  factory CopyWith$Input$RefreshInput.stub(TRes res) =
      _CopyWithStubImpl$Input$RefreshInput;

  TRes call({String? clientMutationId, UuidType? userId, String? refreshToken});
}

class _CopyWithImpl$Input$RefreshInput<TRes>
    implements CopyWith$Input$RefreshInput<TRes> {
  _CopyWithImpl$Input$RefreshInput(this._instance, this._then);

  final Input$RefreshInput _instance;

  final TRes Function(Input$RefreshInput) _then;

  static const _undefined = {};

  TRes call(
          {Object? clientMutationId = _undefined,
          Object? userId = _undefined,
          Object? refreshToken = _undefined}) =>
      _then(Input$RefreshInput(
          clientMutationId: clientMutationId == _undefined
              ? _instance.clientMutationId
              : (clientMutationId as String?),
          userId: userId == _undefined || userId == null
              ? _instance.userId
              : (userId as UuidType),
          refreshToken: refreshToken == _undefined || refreshToken == null
              ? _instance.refreshToken
              : (refreshToken as String)));
}

class _CopyWithStubImpl$Input$RefreshInput<TRes>
    implements CopyWith$Input$RefreshInput<TRes> {
  _CopyWithStubImpl$Input$RefreshInput(this._res);

  TRes _res;

  call({String? clientMutationId, UuidType? userId, String? refreshToken}) =>
      _res;
}

const possibleTypesMap = {
  'Node': {'Query'}
};
