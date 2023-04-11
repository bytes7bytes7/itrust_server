// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'comment.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Comment _$$_CommentFromJson(Map<String, dynamic> json) => _$_Comment(
      id: CommentID.fromJson(json['id'] as Map<String, dynamic>),
      authorID: UserID.fromJson(json['authorID'] as Map<String, dynamic>),
      postID: PostID.fromJson(json['postID'] as Map<String, dynamic>),
      createdAt: DateTime.parse(json['createdAt'] as String),
      text: json['text'] as String,
      likedByIDs: (json['likedByIDs'] as List<dynamic>)
          .map((e) => UserID.fromJson(e as Map<String, dynamic>))
          .toList(),
      replyIDs: (json['replyIDs'] as List<dynamic>)
          .map((e) => CommentID.fromJson(e as Map<String, dynamic>))
          .toList(),
      replyToID: json['replyToID'] == null
          ? null
          : CommentID.fromJson(json['replyToID'] as Map<String, dynamic>),
      modifiedAt: json['modifiedAt'] == null
          ? null
          : DateTime.parse(json['modifiedAt'] as String),
    );

Map<String, dynamic> _$$_CommentToJson(_$_Comment instance) =>
    <String, dynamic>{
      'id': instance.id.toJson(),
      'authorID': instance.authorID.toJson(),
      'postID': instance.postID.toJson(),
      'createdAt': instance.createdAt.toIso8601String(),
      'text': instance.text,
      'likedByIDs': instance.likedByIDs.map((e) => e.toJson()).toList(),
      'replyIDs': instance.replyIDs.map((e) => e.toJson()).toList(),
      'replyToID': instance.replyToID?.toJson(),
      'modifiedAt': instance.modifiedAt?.toIso8601String(),
    };
