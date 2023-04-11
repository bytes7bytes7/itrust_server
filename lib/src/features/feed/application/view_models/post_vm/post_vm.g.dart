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
      mediaUrls:
          (json['mediaUrls'] as List<dynamic>).map((e) => e as String).toList(),
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
      'mediaUrls': instance.mediaUrls,
      'likedByMe': instance.likedByMe,
      'likesAmount': instance.likesAmount,
      'commentsAmount': instance.commentsAmount,
      'tags': instance.tags,
    };
