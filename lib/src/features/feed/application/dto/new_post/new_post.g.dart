// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'new_post.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

NewPost _$NewPostFromJson(Map<String, dynamic> json) => NewPost(
      text: json['text'] as String,
      media: (json['media'] as List<dynamic>)
          .map((e) => NewMedia.fromJson(e as Map<String, dynamic>))
          .toList(),
      tags: (json['tags'] as List<dynamic>).map((e) => e as String).toList(),
    );

Map<String, dynamic> _$NewPostToJson(NewPost instance) => <String, dynamic>{
      'text': instance.text,
      'media': instance.media.map((e) => e.toJson()).toList(),
      'tags': instance.tags,
    };
