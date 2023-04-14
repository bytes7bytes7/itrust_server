// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_friends_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GetFriendsRequest _$GetFriendsRequestFromJson(Map<String, dynamic> json) =>
    GetFriendsRequest(
      friendsTo: json['friendsTo'] as String,
      lastUserID: json['lastUserID'] as String?,
    );

Map<String, dynamic> _$GetFriendsRequestToJson(GetFriendsRequest instance) =>
    <String, dynamic>{
      'friendsTo': instance.friendsTo,
      'lastUserID': instance.lastUserID,
    };
