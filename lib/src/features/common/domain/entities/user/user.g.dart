// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$EndUser _$$EndUserFromJson(Map<String, dynamic> json) => _$EndUser(
      id: UserID.fromJson(json['id'] as Map<String, dynamic>),
      firstName: json['firstName'] as String,
      lastName: json['lastName'] as String,
      email: json['email'] as String,
      passwordHash: json['passwordHash'] as String,
      nick: json['nick'] as String?,
      $type: json['type'] as String?,
    );

Map<String, dynamic> _$$EndUserToJson(_$EndUser instance) => <String, dynamic>{
      'id': instance.id.toJson(),
      'firstName': instance.firstName,
      'lastName': instance.lastName,
      'email': instance.email,
      'passwordHash': instance.passwordHash,
      'nick': instance.nick,
      'type': instance.$type,
    };

_$StaffUser _$$StaffUserFromJson(Map<String, dynamic> json) => _$StaffUser(
      id: UserID.fromJson(json['id'] as Map<String, dynamic>),
      name: json['name'] as String,
      nick: json['nick'] as String?,
      $type: json['type'] as String?,
    );

Map<String, dynamic> _$$StaffUserToJson(_$StaffUser instance) =>
    <String, dynamic>{
      'id': instance.id.toJson(),
      'name': instance.name,
      'nick': instance.nick,
      'type': instance.$type,
    };
