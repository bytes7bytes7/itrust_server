// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_messages_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GetMessagesRequest _$GetMessagesRequestFromJson(Map<String, dynamic> json) =>
    GetMessagesRequest(
      chatID: json['chatID'] as String,
      lastMessageID: json['lastMessageID'] as String?,
    );

Map<String, dynamic> _$GetMessagesRequestToJson(GetMessagesRequest instance) =>
    <String, dynamic>{
      'chatID': instance.chatID,
      'lastMessageID': instance.lastMessageID,
    };
