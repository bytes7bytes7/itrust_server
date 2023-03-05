// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_user_response_by_id.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GetUserResponseByID _$GetUserResponseByIDFromJson(Map<String, dynamic> json) =>
    GetUserResponseByID(
      user: User.fromJson(json['user'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$GetUserResponseByIDToJson(
        GetUserResponseByID instance) =>
    <String, dynamic>{
      'user': instance.user.toJson(),
    };
