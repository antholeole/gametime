// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'schema.graphql.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Input$UserCondition _$Input$UserConditionFromJson(Map<String, dynamic> json) =>
    Input$UserCondition(
      id: _nullable$uuidTypeFromJson(json['id']),
      createdAt: json['createdAt'] as String?,
      updatedAt: json['updatedAt'] as String?,
      admin: json['admin'] as bool?,
    );

Map<String, dynamic> _$Input$UserConditionToJson(
        Input$UserCondition instance) =>
    <String, dynamic>{
      'id': _nullable$uuidTypeToJson(instance.id),
      'createdAt': instance.createdAt,
      'updatedAt': instance.updatedAt,
      'admin': instance.admin,
    };

Input$UserFilter _$Input$UserFilterFromJson(Map<String, dynamic> json) =>
    Input$UserFilter(
      id: json['id'] == null
          ? null
          : Input$UUIDFilter.fromJson(json['id'] as Map<String, dynamic>),
      createdAt: json['createdAt'] == null
          ? null
          : Input$DatetimeFilter.fromJson(
              json['createdAt'] as Map<String, dynamic>),
      updatedAt: json['updatedAt'] == null
          ? null
          : Input$DatetimeFilter.fromJson(
              json['updatedAt'] as Map<String, dynamic>),
      admin: json['admin'] == null
          ? null
          : Input$BooleanFilter.fromJson(json['admin'] as Map<String, dynamic>),
      and: (json['and'] as List<dynamic>?)
          ?.map((e) => Input$UserFilter.fromJson(e as Map<String, dynamic>))
          .toList(),
      or: (json['or'] as List<dynamic>?)
          ?.map((e) => Input$UserFilter.fromJson(e as Map<String, dynamic>))
          .toList(),
      not: json['not'] == null
          ? null
          : Input$UserFilter.fromJson(json['not'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$Input$UserFilterToJson(Input$UserFilter instance) =>
    <String, dynamic>{
      'id': instance.id?.toJson(),
      'createdAt': instance.createdAt?.toJson(),
      'updatedAt': instance.updatedAt?.toJson(),
      'admin': instance.admin?.toJson(),
      'and': instance.and?.map((e) => e.toJson()).toList(),
      'or': instance.or?.map((e) => e.toJson()).toList(),
      'not': instance.not?.toJson(),
    };

Input$UUIDFilter _$Input$UUIDFilterFromJson(Map<String, dynamic> json) =>
    Input$UUIDFilter(
      isNull: json['isNull'] as bool?,
      equalTo: _nullable$uuidTypeFromJson(json['equalTo']),
      notEqualTo: _nullable$uuidTypeFromJson(json['notEqualTo']),
      distinctFrom: _nullable$uuidTypeFromJson(json['distinctFrom']),
      notDistinctFrom: _nullable$uuidTypeFromJson(json['notDistinctFrom']),
      $in: _nullable$_list$uuidTypeFromJson(json['in']),
      notIn: _nullable$_list$uuidTypeFromJson(json['notIn']),
      lessThan: _nullable$uuidTypeFromJson(json['lessThan']),
      lessThanOrEqualTo: _nullable$uuidTypeFromJson(json['lessThanOrEqualTo']),
      greaterThan: _nullable$uuidTypeFromJson(json['greaterThan']),
      greaterThanOrEqualTo:
          _nullable$uuidTypeFromJson(json['greaterThanOrEqualTo']),
    );

Map<String, dynamic> _$Input$UUIDFilterToJson(Input$UUIDFilter instance) =>
    <String, dynamic>{
      'isNull': instance.isNull,
      'equalTo': _nullable$uuidTypeToJson(instance.equalTo),
      'notEqualTo': _nullable$uuidTypeToJson(instance.notEqualTo),
      'distinctFrom': _nullable$uuidTypeToJson(instance.distinctFrom),
      'notDistinctFrom': _nullable$uuidTypeToJson(instance.notDistinctFrom),
      'in': _nullable$_list$uuidTypeToJson(instance.$in),
      'notIn': _nullable$_list$uuidTypeToJson(instance.notIn),
      'lessThan': _nullable$uuidTypeToJson(instance.lessThan),
      'lessThanOrEqualTo': _nullable$uuidTypeToJson(instance.lessThanOrEqualTo),
      'greaterThan': _nullable$uuidTypeToJson(instance.greaterThan),
      'greaterThanOrEqualTo':
          _nullable$uuidTypeToJson(instance.greaterThanOrEqualTo),
    };

Input$DatetimeFilter _$Input$DatetimeFilterFromJson(
        Map<String, dynamic> json) =>
    Input$DatetimeFilter(
      isNull: json['isNull'] as bool?,
      equalTo: json['equalTo'] as String?,
      notEqualTo: json['notEqualTo'] as String?,
      distinctFrom: json['distinctFrom'] as String?,
      notDistinctFrom: json['notDistinctFrom'] as String?,
      $in: (json['in'] as List<dynamic>?)?.map((e) => e as String).toList(),
      notIn:
          (json['notIn'] as List<dynamic>?)?.map((e) => e as String).toList(),
      lessThan: json['lessThan'] as String?,
      lessThanOrEqualTo: json['lessThanOrEqualTo'] as String?,
      greaterThan: json['greaterThan'] as String?,
      greaterThanOrEqualTo: json['greaterThanOrEqualTo'] as String?,
    );

Map<String, dynamic> _$Input$DatetimeFilterToJson(
        Input$DatetimeFilter instance) =>
    <String, dynamic>{
      'isNull': instance.isNull,
      'equalTo': instance.equalTo,
      'notEqualTo': instance.notEqualTo,
      'distinctFrom': instance.distinctFrom,
      'notDistinctFrom': instance.notDistinctFrom,
      'in': instance.$in,
      'notIn': instance.notIn,
      'lessThan': instance.lessThan,
      'lessThanOrEqualTo': instance.lessThanOrEqualTo,
      'greaterThan': instance.greaterThan,
      'greaterThanOrEqualTo': instance.greaterThanOrEqualTo,
    };

Input$BooleanFilter _$Input$BooleanFilterFromJson(Map<String, dynamic> json) =>
    Input$BooleanFilter(
      isNull: json['isNull'] as bool?,
      equalTo: json['equalTo'] as bool?,
      notEqualTo: json['notEqualTo'] as bool?,
      distinctFrom: json['distinctFrom'] as bool?,
      notDistinctFrom: json['notDistinctFrom'] as bool?,
      $in: (json['in'] as List<dynamic>?)?.map((e) => e as bool).toList(),
      notIn: (json['notIn'] as List<dynamic>?)?.map((e) => e as bool).toList(),
      lessThan: json['lessThan'] as bool?,
      lessThanOrEqualTo: json['lessThanOrEqualTo'] as bool?,
      greaterThan: json['greaterThan'] as bool?,
      greaterThanOrEqualTo: json['greaterThanOrEqualTo'] as bool?,
    );

Map<String, dynamic> _$Input$BooleanFilterToJson(
        Input$BooleanFilter instance) =>
    <String, dynamic>{
      'isNull': instance.isNull,
      'equalTo': instance.equalTo,
      'notEqualTo': instance.notEqualTo,
      'distinctFrom': instance.distinctFrom,
      'notDistinctFrom': instance.notDistinctFrom,
      'in': instance.$in,
      'notIn': instance.notIn,
      'lessThan': instance.lessThan,
      'lessThanOrEqualTo': instance.lessThanOrEqualTo,
      'greaterThan': instance.greaterThan,
      'greaterThanOrEqualTo': instance.greaterThanOrEqualTo,
    };

Input$CreateUserInput _$Input$CreateUserInputFromJson(
        Map<String, dynamic> json) =>
    Input$CreateUserInput(
      clientMutationId: json['clientMutationId'] as String?,
      user: Input$UserInput.fromJson(json['user'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$Input$CreateUserInputToJson(
        Input$CreateUserInput instance) =>
    <String, dynamic>{
      'clientMutationId': instance.clientMutationId,
      'user': instance.user.toJson(),
    };

Input$UserInput _$Input$UserInputFromJson(Map<String, dynamic> json) =>
    Input$UserInput(
      id: _nullable$uuidTypeFromJson(json['id']),
      createdAt: json['createdAt'] as String?,
      updatedAt: json['updatedAt'] as String?,
      admin: json['admin'] as bool?,
    );

Map<String, dynamic> _$Input$UserInputToJson(Input$UserInput instance) =>
    <String, dynamic>{
      'id': _nullable$uuidTypeToJson(instance.id),
      'createdAt': instance.createdAt,
      'updatedAt': instance.updatedAt,
      'admin': instance.admin,
    };

Input$UpdateUserByNodeIdInput _$Input$UpdateUserByNodeIdInputFromJson(
        Map<String, dynamic> json) =>
    Input$UpdateUserByNodeIdInput(
      clientMutationId: json['clientMutationId'] as String?,
      nodeId: json['nodeId'] as String,
      patch: Input$UserPatch.fromJson(json['patch'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$Input$UpdateUserByNodeIdInputToJson(
        Input$UpdateUserByNodeIdInput instance) =>
    <String, dynamic>{
      'clientMutationId': instance.clientMutationId,
      'nodeId': instance.nodeId,
      'patch': instance.patch.toJson(),
    };

Input$UserPatch _$Input$UserPatchFromJson(Map<String, dynamic> json) =>
    Input$UserPatch(
      id: _nullable$uuidTypeFromJson(json['id']),
      createdAt: json['createdAt'] as String?,
      updatedAt: json['updatedAt'] as String?,
      admin: json['admin'] as bool?,
    );

Map<String, dynamic> _$Input$UserPatchToJson(Input$UserPatch instance) =>
    <String, dynamic>{
      'id': _nullable$uuidTypeToJson(instance.id),
      'createdAt': instance.createdAt,
      'updatedAt': instance.updatedAt,
      'admin': instance.admin,
    };

Input$UpdateUserInput _$Input$UpdateUserInputFromJson(
        Map<String, dynamic> json) =>
    Input$UpdateUserInput(
      clientMutationId: json['clientMutationId'] as String?,
      patch: Input$UserPatch.fromJson(json['patch'] as Map<String, dynamic>),
      id: uuidTypeFromJson(json['id']),
    );

Map<String, dynamic> _$Input$UpdateUserInputToJson(
        Input$UpdateUserInput instance) =>
    <String, dynamic>{
      'clientMutationId': instance.clientMutationId,
      'patch': instance.patch.toJson(),
      'id': uuidTypeToJson(instance.id),
    };

Input$DeleteUserByNodeIdInput _$Input$DeleteUserByNodeIdInputFromJson(
        Map<String, dynamic> json) =>
    Input$DeleteUserByNodeIdInput(
      clientMutationId: json['clientMutationId'] as String?,
      nodeId: json['nodeId'] as String,
    );

Map<String, dynamic> _$Input$DeleteUserByNodeIdInputToJson(
        Input$DeleteUserByNodeIdInput instance) =>
    <String, dynamic>{
      'clientMutationId': instance.clientMutationId,
      'nodeId': instance.nodeId,
    };

Input$DeleteUserInput _$Input$DeleteUserInputFromJson(
        Map<String, dynamic> json) =>
    Input$DeleteUserInput(
      clientMutationId: json['clientMutationId'] as String?,
      id: uuidTypeFromJson(json['id']),
    );

Map<String, dynamic> _$Input$DeleteUserInputToJson(
        Input$DeleteUserInput instance) =>
    <String, dynamic>{
      'clientMutationId': instance.clientMutationId,
      'id': uuidTypeToJson(instance.id),
    };

Input$AuthenticateInput _$Input$AuthenticateInputFromJson(
        Map<String, dynamic> json) =>
    Input$AuthenticateInput(
      clientMutationId: json['clientMutationId'] as String?,
      token: json['token'] as String,
    );

Map<String, dynamic> _$Input$AuthenticateInputToJson(
        Input$AuthenticateInput instance) =>
    <String, dynamic>{
      'clientMutationId': instance.clientMutationId,
      'token': instance.token,
    };

Input$RefreshInput _$Input$RefreshInputFromJson(Map<String, dynamic> json) =>
    Input$RefreshInput(
      clientMutationId: json['clientMutationId'] as String?,
      userId: uuidTypeFromJson(json['userId']),
      refreshToken: json['refreshToken'] as String,
    );

Map<String, dynamic> _$Input$RefreshInputToJson(Input$RefreshInput instance) =>
    <String, dynamic>{
      'clientMutationId': instance.clientMutationId,
      'userId': uuidTypeToJson(instance.userId),
      'refreshToken': instance.refreshToken,
    };
