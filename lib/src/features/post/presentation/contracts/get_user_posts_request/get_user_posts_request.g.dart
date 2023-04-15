// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_user_posts_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GetUserPostsRequest _$GetUserPostsRequestFromJson(Map<String, dynamic> json) =>
    GetUserPostsRequest(
      byUserID: json['byUserID'] as String,
      lastPostID: json['lastPostID'] as String?,
    );

Map<String, dynamic> _$GetUserPostsRequestToJson(
        GetUserPostsRequest instance) =>
    <String, dynamic>{
      'byUserID': instance.byUserID,
      'lastPostID': instance.lastPostID,
    };
