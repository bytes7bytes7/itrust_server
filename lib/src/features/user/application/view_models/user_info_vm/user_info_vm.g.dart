// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_info_vm.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$EndUserInfoVM _$$EndUserInfoVMFromJson(Map<String, dynamic> json) =>
    _$EndUserInfoVM(
      id: UserID.fromJson(json['id'] as Map<String, dynamic>),
      email: json['email'] as String,
      firstName: json['firstName'] as String,
      avatarUrls: (json['avatarUrls'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      friendsAmount: json['friendsAmount'] as int,
      postsAmount: json['postsAmount'] as int,
      subscribersAmount: json['subscribersAmount'] as int,
      amIFriend: json['amIFriend'] as bool,
      amISubscriber: json['amISubscriber'] as bool,
      didISentFriendBid: json['didISentFriendBid'] as bool,
      lastName: json['lastName'] as String?,
      nick: json['nick'] as String?,
      $type: json['type'] as String?,
    );

Map<String, dynamic> _$$EndUserInfoVMToJson(_$EndUserInfoVM instance) =>
    <String, dynamic>{
      'id': instance.id.toJson(),
      'email': instance.email,
      'firstName': instance.firstName,
      'avatarUrls': instance.avatarUrls,
      'friendsAmount': instance.friendsAmount,
      'postsAmount': instance.postsAmount,
      'subscribersAmount': instance.subscribersAmount,
      'amIFriend': instance.amIFriend,
      'amISubscriber': instance.amISubscriber,
      'didISentFriendBid': instance.didISentFriendBid,
      'lastName': instance.lastName,
      'nick': instance.nick,
      'type': instance.$type,
    };

_$StaffUserInfoVM _$$StaffUserInfoVMFromJson(Map<String, dynamic> json) =>
    _$StaffUserInfoVM(
      id: UserID.fromJson(json['id'] as Map<String, dynamic>),
      name: json['name'] as String,
      avatarUrls: (json['avatarUrls'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      nick: json['nick'] as String?,
      $type: json['type'] as String?,
    );

Map<String, dynamic> _$$StaffUserInfoVMToJson(_$StaffUserInfoVM instance) =>
    <String, dynamic>{
      'id': instance.id.toJson(),
      'name': instance.name,
      'avatarUrls': instance.avatarUrls,
      'nick': instance.nick,
      'type': instance.$type,
    };
