// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_vm.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$EndUserVM _$$EndUserVMFromJson(Map<String, dynamic> json) => _$EndUserVM(
      id: UserID.fromJson(json['id'] as Map<String, dynamic>),
      email: json['email'] as String,
      firstName: json['firstName'] as String,
      avatarUrls: (json['avatarUrls'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      friendsAmount: json['friendsAmount'] as int,
      lastName: json['lastName'] as String?,
      nick: json['nick'] as String?,
      $type: json['type'] as String?,
    );

Map<String, dynamic> _$$EndUserVMToJson(_$EndUserVM instance) =>
    <String, dynamic>{
      'id': instance.id.toJson(),
      'email': instance.email,
      'firstName': instance.firstName,
      'avatarUrls': instance.avatarUrls,
      'friendsAmount': instance.friendsAmount,
      'lastName': instance.lastName,
      'nick': instance.nick,
      'type': instance.$type,
    };

_$StaffUserVM _$$StaffUserVMFromJson(Map<String, dynamic> json) =>
    _$StaffUserVM(
      id: UserID.fromJson(json['id'] as Map<String, dynamic>),
      name: json['name'] as String,
      avatarUrls: (json['avatarUrls'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      nick: json['nick'] as String?,
      $type: json['type'] as String?,
    );

Map<String, dynamic> _$$StaffUserVMToJson(_$StaffUserVM instance) =>
    <String, dynamic>{
      'id': instance.id.toJson(),
      'name': instance.name,
      'avatarUrls': instance.avatarUrls,
      'nick': instance.nick,
      'type': instance.$type,
    };
