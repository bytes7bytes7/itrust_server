// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_group_chat_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CreateGroupChatRequest _$CreateGroupChatRequestFromJson(
        Map<String, dynamic> json) =>
    CreateGroupChatRequest(
      title: json['title'] as String,
      image: json['image'] == null
          ? null
          : NewMedia.fromJson(json['image'] as Map<String, dynamic>),
      guestIDs:
          (json['guestIDs'] as List<dynamic>).map((e) => e as String).toList(),
    );

Map<String, dynamic> _$CreateGroupChatRequestToJson(
        CreateGroupChatRequest instance) =>
    <String, dynamic>{
      'title': instance.title,
      'image': instance.image?.toJson(),
      'guestIDs': instance.guestIDs,
    };
