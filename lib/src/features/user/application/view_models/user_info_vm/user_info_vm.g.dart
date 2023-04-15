// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_info_vm.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$EndUserInfoVM _$$EndUserInfoVMFromJson(Map<String, dynamic> json) =>
    _$EndUserInfoVM(
      user: EndUserVM.fromJson(json['user'] as Map<String, dynamic>),
      friendsAmount: json['friendsAmount'] as int,
      postsAmount: json['postsAmount'] as int,
      subscribersAmount: json['subscribersAmount'] as int,
      amIFriend: json['amIFriend'] as bool,
      amISubscriber: json['amISubscriber'] as bool,
      didISentFriendBid: json['didISentFriendBid'] as bool,
      $type: json['type'] as String?,
    );

Map<String, dynamic> _$$EndUserInfoVMToJson(_$EndUserInfoVM instance) =>
    <String, dynamic>{
      'user': instance.user.toJson(),
      'friendsAmount': instance.friendsAmount,
      'postsAmount': instance.postsAmount,
      'subscribersAmount': instance.subscribersAmount,
      'amIFriend': instance.amIFriend,
      'amISubscriber': instance.amISubscriber,
      'didISentFriendBid': instance.didISentFriendBid,
      'type': instance.$type,
    };

_$StaffUserInfoVM _$$StaffUserInfoVMFromJson(Map<String, dynamic> json) =>
    _$StaffUserInfoVM(
      user: StaffUserVM.fromJson(json['user'] as Map<String, dynamic>),
      $type: json['type'] as String?,
    );

Map<String, dynamic> _$$StaffUserInfoVMToJson(_$StaffUserInfoVM instance) =>
    <String, dynamic>{
      'user': instance.user.toJson(),
      'type': instance.$type,
    };
