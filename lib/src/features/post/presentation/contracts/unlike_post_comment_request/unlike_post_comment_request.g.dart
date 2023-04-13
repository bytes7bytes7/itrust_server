// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'unlike_post_comment_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UnlikePostCommentRequest _$UnlikePostCommentRequestFromJson(
        Map<String, dynamic> json) =>
    UnlikePostCommentRequest(
      postID: json['postID'] as String,
      commentID: json['commentID'] as String,
    );

Map<String, dynamic> _$UnlikePostCommentRequestToJson(
        UnlikePostCommentRequest instance) =>
    <String, dynamic>{
      'postID': instance.postID,
      'commentID': instance.commentID,
    };
