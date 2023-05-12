// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_message_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GetMessageRequest _$GetMessageRequestFromJson(Map<String, dynamic> json) =>
    GetMessageRequest(
      chatID: json['chatID'] as String,
      messageID: json['messageID'] as String,
    );

Map<String, dynamic> _$GetMessageRequestToJson(GetMessageRequest instance) =>
    <String, dynamic>{
      'chatID': instance.chatID,
      'messageID': instance.messageID,
    };
