import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../../utils/typedef.dart';
import '../../../domain/domain.dart';

part 'remove_device_response.g.dart';

@JsonSerializable()
class RemoveDeviceResponse {
  const RemoveDeviceResponse({
    required this.thisSession,
    required this.otherSessions,
  });

  final DeviceSession thisSession;
  final List<DeviceSession> otherSessions;

  factory RemoveDeviceResponse.fromJson(JsonMap json) =>
      _$RemoveDeviceResponseFromJson(json);

  JsonMap toJson() => _$RemoveDeviceResponseToJson(this);
}
