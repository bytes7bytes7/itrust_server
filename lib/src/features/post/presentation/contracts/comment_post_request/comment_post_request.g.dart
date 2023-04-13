// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'comment_post_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CommentPostRequest _$CommentPostRequestFromJson(Map<String, dynamic> json) =>
    CommentPostRequest(
      postID: json['postID'] as String,
      text: json['text'] as String,
      repliedToCommentID: json['repliedToCommentID'] as String?,
    );

Map<String, dynamic> _$CommentPostRequestToJson(CommentPostRequest instance) =>
    <String, dynamic>{
      'postID': instance.postID,
      'text': instance.text,
      'repliedToCommentID': instance.repliedToCommentID,
    };
