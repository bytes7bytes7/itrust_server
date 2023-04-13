// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'like_post_comment_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

LikePostCommentRequest _$LikePostCommentRequestFromJson(
        Map<String, dynamic> json) =>
    LikePostCommentRequest(
      postID: json['postID'] as String,
      commentID: json['commentID'] as String,
    );

Map<String, dynamic> _$LikePostCommentRequestToJson(
        LikePostCommentRequest instance) =>
    <String, dynamic>{
      'postID': instance.postID,
      'commentID': instance.commentID,
    };
