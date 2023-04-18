// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_for_user_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GetForUserRequest _$GetForUserRequestFromJson(Map<String, dynamic> json) =>
    GetForUserRequest(
      userID: json['userID'] as String,
      lastUserID: json['lastUserID'] as String?,
    );

Map<String, dynamic> _$GetForUserRequestToJson(GetForUserRequest instance) =>
    <String, dynamic>{
      'userID': instance.userID,
      'lastUserID': instance.lastUserID,
    };
