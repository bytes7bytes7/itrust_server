// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_user_by_nick_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GetUserByNickResponse _$GetUserByNickResponseFromJson(
        Map<String, dynamic> json) =>
    GetUserByNickResponse(
      user: User.fromJson(json['user'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$GetUserByNickResponseToJson(
        GetUserByNickResponse instance) =>
    <String, dynamic>{
      'user': instance.user.toJson(),
    };
