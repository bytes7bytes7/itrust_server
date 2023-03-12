// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'remove_device_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

RemoveDeviceResponse _$RemoveDeviceResponseFromJson(
        Map<String, dynamic> json) =>
    RemoveDeviceResponse(
      thisSession:
          DeviceSession.fromJson(json['thisSession'] as Map<String, dynamic>),
      otherSessions: (json['otherSessions'] as List<dynamic>)
          .map((e) => DeviceSession.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$RemoveDeviceResponseToJson(
        RemoveDeviceResponse instance) =>
    <String, dynamic>{
      'thisSession': instance.thisSession.toJson(),
      'otherSessions': instance.otherSessions.map((e) => e.toJson()).toList(),
    };
