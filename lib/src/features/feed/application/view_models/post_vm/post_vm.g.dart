// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'post_vm.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_PostVM _$$_PostVMFromJson(Map<String, dynamic> json) => _$_PostVM(
      id: PostID.fromJson(json['id'] as Map<String, dynamic>),
      authorID: UserID.fromJson(json['authorID'] as Map<String, dynamic>),
      createdAt: DateTime.parse(json['createdAt'] as String),
      text: json['text'] as String,
      mediaIDs: (json['mediaIDs'] as List<dynamic>)
          .map((e) => MediaID.fromJson(e as Map<String, dynamic>))
          .toList(),
      likedByMe: json['likedByMe'] as bool,
      likesAmount: json['likesAmount'] as int,
      commentsAmount: json['commentsAmount'] as int,
      tags: (json['tags'] as List<dynamic>).map((e) => e as String).toList(),
    );

Map<String, dynamic> _$$_PostVMToJson(_$_PostVM instance) => <String, dynamic>{
      'id': instance.id.toJson(),
      'authorID': instance.authorID.toJson(),
      'createdAt': instance.createdAt.toIso8601String(),
      'text': instance.text,
      'mediaIDs': instance.mediaIDs.map((e) => e.toJson()).toList(),
      'likedByMe': instance.likedByMe,
      'likesAmount': instance.likesAmount,
      'commentsAmount': instance.commentsAmount,
      'tags': instance.tags,
    };
