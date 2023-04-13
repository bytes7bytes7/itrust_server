// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_post_comment_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GetPostCommentRequest _$GetPostCommentRequestFromJson(
        Map<String, dynamic> json) =>
    GetPostCommentRequest(
      postID: json['postID'] as String,
      commentID: json['commentID'] as String,
    );

Map<String, dynamic> _$GetPostCommentRequestToJson(
        GetPostCommentRequest instance) =>
    <String, dynamic>{
      'postID': instance.postID,
      'commentID': instance.commentID,
    };
