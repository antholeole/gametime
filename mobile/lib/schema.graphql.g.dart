// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'schema.graphql.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

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
