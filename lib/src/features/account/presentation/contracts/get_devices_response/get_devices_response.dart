import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../../utils/typedef.dart';
import '../../../application/view_models/view_models.dart';

part 'get_devices_response.g.dart';

@JsonSerializable()
class GetDevicesResponse {
  const GetDevicesResponse({
    required this.thisSession,
    required this.otherSessions,
  });

  final DeviceSessionVM thisSession;
  final List<DeviceSessionVM> otherSessions;

  factory GetDevicesResponse.fromJson(JsonMap json) =>
      _$GetDevicesResponseFromJson(json);

  JsonMap toJson() => _$GetDevicesResponseToJson(this);
}
