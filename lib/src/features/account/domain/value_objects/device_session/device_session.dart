import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../../utils/typedef.dart';

part 'device_session.g.dart';

@JsonSerializable()
class DeviceSession {
  const DeviceSession({
    required this.deviceName,
    required this.ip,
    required this.createdAt,
  });

  final String deviceName;
  final String ip;
  final DateTime createdAt;

  factory DeviceSession.fromJson(JsonMap json) => _$DeviceSessionFromJson(json);

  JsonMap toJson() => _$DeviceSessionToJson(this);
}
