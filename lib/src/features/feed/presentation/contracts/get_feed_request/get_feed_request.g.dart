// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_feed_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GetFeedRequest _$GetFeedRequestFromJson(Map<String, dynamic> json) =>
    GetFeedRequest(
      tag: json['tag'] as String?,
      lastPostID: json['lastPostID'] as String?,
    );

Map<String, dynamic> _$GetFeedRequestToJson(GetFeedRequest instance) =>
    <String, dynamic>{
      'tag': instance.tag,
      'lastPostID': instance.lastPostID,
    };
