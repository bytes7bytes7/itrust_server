// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chat_event_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CreatedChatEventResponse _$$CreatedChatEventResponseFromJson(
        Map<String, dynamic> json) =>
    _$CreatedChatEventResponse(
      chat: ChatVM.fromJson(json['chat'] as Map<String, dynamic>),
      $type: json['type'] as String?,
    );

Map<String, dynamic> _$$CreatedChatEventResponseToJson(
        _$CreatedChatEventResponse instance) =>
    <String, dynamic>{
      'chat': instance.chat.toJson(),
      'type': instance.$type,
    };

_$DeletedChatEventResponse _$$DeletedChatEventResponseFromJson(
        Map<String, dynamic> json) =>
    _$DeletedChatEventResponse(
      chatID: ChatID.fromJson(json['chatID'] as Map<String, dynamic>),
      $type: json['type'] as String?,
    );

Map<String, dynamic> _$$DeletedChatEventResponseToJson(
        _$DeletedChatEventResponse instance) =>
    <String, dynamic>{
      'chatID': instance.chatID.toJson(),
      'type': instance.$type,
    };

_$UpdatedChatEventResponse _$$UpdatedChatEventResponseFromJson(
        Map<String, dynamic> json) =>
    _$UpdatedChatEventResponse(
      chat: ChatVM.fromJson(json['chat'] as Map<String, dynamic>),
      $type: json['type'] as String?,
    );

Map<String, dynamic> _$$UpdatedChatEventResponseToJson(
        _$UpdatedChatEventResponse instance) =>
    <String, dynamic>{
      'chat': instance.chat.toJson(),
      'type': instance.$type,
    };

_$OnlineChangedChatEventResponse _$$OnlineChangedChatEventResponseFromJson(
        Map<String, dynamic> json) =>
    _$OnlineChangedChatEventResponse(
      chatID: ChatID.fromJson(json['chatID'] as Map<String, dynamic>),
      isOnline: json['isOnline'] as bool,
      $type: json['type'] as String?,
    );

Map<String, dynamic> _$$OnlineChangedChatEventResponseToJson(
        _$OnlineChangedChatEventResponse instance) =>
    <String, dynamic>{
      'chatID': instance.chatID.toJson(),
      'isOnline': instance.isOnline,
      'type': instance.$type,
    };
