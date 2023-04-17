// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$EndUser _$$EndUserFromJson(Map<String, dynamic> json) => _$EndUser(
      id: UserID.fromJson(json['id'] as Map<String, dynamic>),
      email: json['email'] as String,
      firstName: json['firstName'] as String,
      avatarUrls: (json['avatarUrls'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      friends: (json['friends'] as List<dynamic>)
          .map((e) => UserID.fromJson(e as Map<String, dynamic>))
          .toList(),
      subscribers: (json['subscribers'] as List<dynamic>)
          .map((e) => UserID.fromJson(e as Map<String, dynamic>))
          .toList(),
      subscriptions: (json['subscriptions'] as List<dynamic>)
          .map((e) => UserID.fromJson(e as Map<String, dynamic>))
          .toList(),
      posts: (json['posts'] as List<dynamic>)
          .map((e) => PostID.fromJson(e as Map<String, dynamic>))
          .toList(),
      myFriendBids: (json['myFriendBids'] as List<dynamic>)
          .map((e) => UserID.fromJson(e as Map<String, dynamic>))
          .toList(),
      friendsBidsToMe: (json['friendsBidsToMe'] as List<dynamic>)
          .map((e) => UserID.fromJson(e as Map<String, dynamic>))
          .toList(),
      lastName: json['lastName'] as String?,
      nick: json['nick'] as String?,
      $type: json['type'] as String?,
    );

Map<String, dynamic> _$$EndUserToJson(_$EndUser instance) => <String, dynamic>{
      'id': instance.id.toJson(),
      'email': instance.email,
      'firstName': instance.firstName,
      'avatarUrls': instance.avatarUrls,
      'friends': instance.friends.map((e) => e.toJson()).toList(),
      'subscribers': instance.subscribers.map((e) => e.toJson()).toList(),
      'subscriptions': instance.subscriptions.map((e) => e.toJson()).toList(),
      'posts': instance.posts.map((e) => e.toJson()).toList(),
      'myFriendBids': instance.myFriendBids.map((e) => e.toJson()).toList(),
      'friendsBidsToMe':
          instance.friendsBidsToMe.map((e) => e.toJson()).toList(),
      'lastName': instance.lastName,
      'nick': instance.nick,
      'type': instance.$type,
    };

_$StaffUser _$$StaffUserFromJson(Map<String, dynamic> json) => _$StaffUser(
      id: UserID.fromJson(json['id'] as Map<String, dynamic>),
      name: json['name'] as String,
      avatarUrls: (json['avatarUrls'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      nick: json['nick'] as String?,
      $type: json['type'] as String?,
    );

Map<String, dynamic> _$$StaffUserToJson(_$StaffUser instance) =>
    <String, dynamic>{
      'id': instance.id.toJson(),
      'name': instance.name,
      'avatarUrls': instance.avatarUrls,
      'nick': instance.nick,
      'type': instance.$type,
    };
