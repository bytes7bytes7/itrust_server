// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_post_comments_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GetPostCommentsRequest _$GetPostCommentsRequestFromJson(
        Map<String, dynamic> json) =>
    GetPostCommentsRequest(
      lastCommentID: json['lastCommentID'] as String?,
      repliedToCommentID: json['repliedToCommentID'] as String?,
    );

Map<String, dynamic> _$GetPostCommentsRequestToJson(
        GetPostCommentsRequest instance) =>
    <String, dynamic>{
      'lastCommentID': instance.lastCommentID,
      'repliedToCommentID': instance.repliedToCommentID,
    };
