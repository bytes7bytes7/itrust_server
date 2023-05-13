// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chat_vm.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MonologueChatVM _$$MonologueChatVMFromJson(Map<String, dynamic> json) =>
    _$MonologueChatVM(
      id: ChatID.fromJson(json['id'] as Map<String, dynamic>),
      createdAt: DateTime.parse(json['createdAt'] as String),
      title: json['title'] as String,
      iconName: json['iconName'] as String?,
      pic: json['pic'] == null
          ? null
          : MediaVM.fromJson(json['pic'] as Map<String, dynamic>),
      lastMessageID: json['lastMessageID'] == null
          ? null
          : MessageID.fromJson(json['lastMessageID'] as Map<String, dynamic>),
      $type: json['type'] as String?,
    );

Map<String, dynamic> _$$MonologueChatVMToJson(_$MonologueChatVM instance) =>
    <String, dynamic>{
      'id': instance.id.toJson(),
      'createdAt': instance.createdAt.toIso8601String(),
      'title': instance.title,
      'iconName': instance.iconName,
      'pic': instance.pic?.toJson(),
      'lastMessageID': instance.lastMessageID?.toJson(),
      'type': instance.$type,
    };

_$DialogueChatVM _$$DialogueChatVMFromJson(Map<String, dynamic> json) =>
    _$DialogueChatVM(
      id: ChatID.fromJson(json['id'] as Map<String, dynamic>),
      createdAt: DateTime.parse(json['createdAt'] as String),
      partnerID: UserID.fromJson(json['partnerID'] as Map<String, dynamic>),
      unreadAmount: json['unreadAmount'] as int,
      lastMessageID: json['lastMessageID'] == null
          ? null
          : MessageID.fromJson(json['lastMessageID'] as Map<String, dynamic>),
      $type: json['type'] as String?,
    );

Map<String, dynamic> _$$DialogueChatVMToJson(_$DialogueChatVM instance) =>
    <String, dynamic>{
      'id': instance.id.toJson(),
      'createdAt': instance.createdAt.toIso8601String(),
      'partnerID': instance.partnerID.toJson(),
      'unreadAmount': instance.unreadAmount,
      'lastMessageID': instance.lastMessageID?.toJson(),
      'type': instance.$type,
    };

_$GroupChatVM _$$GroupChatVMFromJson(Map<String, dynamic> json) =>
    _$GroupChatVM(
      id: ChatID.fromJson(json['id'] as Map<String, dynamic>),
      createdAt: DateTime.parse(json['createdAt'] as String),
      ownerID: UserID.fromJson(json['ownerID'] as Map<String, dynamic>),
      participantsAmount: json['participantsAmount'] as int,
      title: json['title'] as String,
      unreadAmount: json['unreadAmount'] as int,
      pic: json['pic'] == null
          ? null
          : MediaVM.fromJson(json['pic'] as Map<String, dynamic>),
      lastMessageID: json['lastMessageID'] == null
          ? null
          : MessageID.fromJson(json['lastMessageID'] as Map<String, dynamic>),
      $type: json['type'] as String?,
    );

Map<String, dynamic> _$$GroupChatVMToJson(_$GroupChatVM instance) =>
    <String, dynamic>{
      'id': instance.id.toJson(),
      'createdAt': instance.createdAt.toIso8601String(),
      'ownerID': instance.ownerID.toJson(),
      'participantsAmount': instance.participantsAmount,
      'title': instance.title,
      'unreadAmount': instance.unreadAmount,
      'pic': instance.pic?.toJson(),
      'lastMessageID': instance.lastMessageID?.toJson(),
      'type': instance.$type,
    };
