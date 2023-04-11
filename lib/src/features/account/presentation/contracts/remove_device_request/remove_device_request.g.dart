// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'remove_device_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

RemoveDeviceRequest _$RemoveDeviceRequestFromJson(Map<String, dynamic> json) =>
    RemoveDeviceRequest(
      sessionID: json['sessionID'] as String,
      password: json['password'] as String,
    );

Map<String, dynamic> _$RemoveDeviceRequestToJson(
        RemoveDeviceRequest instance) =>
    <String, dynamic>{
      'sessionID': instance.sessionID,
      'password': instance.password,
    };
