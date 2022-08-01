// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'login.graphql.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Variables$Mutation$Authenticate _$Variables$Mutation$AuthenticateFromJson(
        Map<String, dynamic> json) =>
    Variables$Mutation$Authenticate(
      token: json['token'] as String,
    );

Map<String, dynamic> _$Variables$Mutation$AuthenticateToJson(
        Variables$Mutation$Authenticate instance) =>
    <String, dynamic>{
      'token': instance.token,
    };

Mutation$Authenticate _$Mutation$AuthenticateFromJson(
        Map<String, dynamic> json) =>
    Mutation$Authenticate(
      authenticate: json['authenticate'] == null
          ? null
          : Mutation$Authenticate$authenticate.fromJson(
              json['authenticate'] as Map<String, dynamic>),
      $__typename: json['__typename'] as String,
    );

Map<String, dynamic> _$Mutation$AuthenticateToJson(
        Mutation$Authenticate instance) =>
    <String, dynamic>{
      'authenticate': instance.authenticate?.toJson(),
      '__typename': instance.$__typename,
    };

Mutation$Authenticate$authenticate _$Mutation$Authenticate$authenticateFromJson(
        Map<String, dynamic> json) =>
    Mutation$Authenticate$authenticate(
      result: json['result'] == null
          ? null
          : Mutation$Authenticate$authenticate$result.fromJson(
              json['result'] as Map<String, dynamic>),
      $__typename: json['__typename'] as String,
    );

Map<String, dynamic> _$Mutation$Authenticate$authenticateToJson(
        Mutation$Authenticate$authenticate instance) =>
    <String, dynamic>{
      'result': instance.result?.toJson(),
      '__typename': instance.$__typename,
    };

Mutation$Authenticate$authenticate$result
    _$Mutation$Authenticate$authenticate$resultFromJson(
            Map<String, dynamic> json) =>
        Mutation$Authenticate$authenticate$result(
          userId: _nullable$uuidTypeFromJson(json['userId']),
          accessToken: json['accessToken'] as String?,
          refreshToken: json['refreshToken'] as String?,
          admin: json['admin'] as bool?,
          $__typename: json['__typename'] as String,
        );

Map<String, dynamic> _$Mutation$Authenticate$authenticate$resultToJson(
        Mutation$Authenticate$authenticate$result instance) =>
    <String, dynamic>{
      'userId': _nullable$uuidTypeToJson(instance.userId),
      'accessToken': instance.accessToken,
      'refreshToken': instance.refreshToken,
      'admin': instance.admin,
      '__typename': instance.$__typename,
    };
