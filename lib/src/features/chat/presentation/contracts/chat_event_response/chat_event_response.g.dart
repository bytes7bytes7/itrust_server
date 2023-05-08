// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chat_event_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ChatEventResponse _$$_ChatEventResponseFromJson(Map<String, dynamic> json) =>
    _$_ChatEventResponse(
      created: (json['created'] as List<dynamic>?)
              ?.map((e) => ChatVM.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      deleted: (json['deleted'] as List<dynamic>?)
              ?.map((e) => ChatID.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      updated: (json['updated'] as List<dynamic>?)
              ?.map((e) => ChatVM.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$_ChatEventResponseToJson(
        _$_ChatEventResponse instance) =>
    <String, dynamic>{
      'created': instance.created.map((e) => e.toJson()).toList(),
      'deleted': instance.deleted.map((e) => e.toJson()).toList(),
      'updated': instance.updated.map((e) => e.toJson()).toList(),
    };
