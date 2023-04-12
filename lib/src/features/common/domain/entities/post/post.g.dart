// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'post.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Post _$$_PostFromJson(Map<String, dynamic> json) => _$_Post(
      id: PostID.fromJson(json['id'] as Map<String, dynamic>),
      authorID: UserID.fromJson(json['authorID'] as Map<String, dynamic>),
      createdAt: DateTime.parse(json['createdAt'] as String),
      text: json['text'] as String,
      mediaIDs: (json['mediaIDs'] as List<dynamic>)
          .map((e) => MediaID.fromJson(e as Map<String, dynamic>))
          .toList(),
      likedByIDs: (json['likedByIDs'] as List<dynamic>)
          .map((e) => UserID.fromJson(e as Map<String, dynamic>))
          .toList(),
      commentIDs: (json['commentIDs'] as List<dynamic>)
          .map((e) => CommentID.fromJson(e as Map<String, dynamic>))
          .toList(),
      tags: (json['tags'] as List<dynamic>).map((e) => e as String).toList(),
    );

Map<String, dynamic> _$$_PostToJson(_$_Post instance) => <String, dynamic>{
      'id': instance.id.toJson(),
      'authorID': instance.authorID.toJson(),
      'createdAt': instance.createdAt.toIso8601String(),
      'text': instance.text,
      'mediaIDs': instance.mediaIDs.map((e) => e.toJson()).toList(),
      'likedByIDs': instance.likedByIDs.map((e) => e.toJson()).toList(),
      'commentIDs': instance.commentIDs.map((e) => e.toJson()).toList(),
      'tags': instance.tags,
    };
