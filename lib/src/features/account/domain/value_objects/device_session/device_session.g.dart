// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'device_session.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DeviceSession _$DeviceSessionFromJson(Map<String, dynamic> json) =>
    DeviceSession(
      deviceName: json['deviceName'] as String,
      ip: json['ip'] as String,
      createdAt: DateTime.parse(json['createdAt'] as String),
    );

Map<String, dynamic> _$DeviceSessionToJson(DeviceSession instance) =>
    <String, dynamic>{
      'deviceName': instance.deviceName,
      'ip': instance.ip,
      'createdAt': instance.createdAt.toIso8601String(),
    };
