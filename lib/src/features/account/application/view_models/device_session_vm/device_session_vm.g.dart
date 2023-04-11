// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'device_session_vm.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DeviceSessionVM _$DeviceSessionVMFromJson(Map<String, dynamic> json) =>
    DeviceSessionVM(
      id: DeviceSessionID.fromJson(json['id'] as Map<String, dynamic>),
      deviceInfo:
          DeviceInfoVM.fromJson(json['deviceInfo'] as Map<String, dynamic>),
      ip: json['ip'] as String,
      createdAt: DateTime.parse(json['createdAt'] as String),
    );

Map<String, dynamic> _$DeviceSessionVMToJson(DeviceSessionVM instance) =>
    <String, dynamic>{
      'id': instance.id.toJson(),
      'deviceInfo': instance.deviceInfo.toJson(),
      'ip': instance.ip,
      'createdAt': instance.createdAt.toIso8601String(),
    };
