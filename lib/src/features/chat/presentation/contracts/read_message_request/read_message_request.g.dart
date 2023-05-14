// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'read_message_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ReadMessageRequest _$ReadMessageRequestFromJson(Map<String, dynamic> json) =>
    ReadMessageRequest(
      chatID: ChatID.fromJson(json['chatID'] as Map<String, dynamic>),
      messageID: MessageID.fromJson(json['messageID'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ReadMessageRequestToJson(ReadMessageRequest instance) =>
    <String, dynamic>{
      'chatID': instance.chatID.toJson(),
      'messageID': instance.messageID.toJson(),
    };
