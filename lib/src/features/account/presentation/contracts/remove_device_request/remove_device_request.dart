import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../../utils/typedef.dart';

part 'remove_device_request.g.dart';

@JsonSerializable()
class RemoveDeviceRequest {
  const RemoveDeviceRequest({
    required this.sessionID,
    required this.password,
  });

  final int sessionID;
  final String password;

  factory RemoveDeviceRequest.fromJson(JsonMap json) =>
      _$RemoveDeviceRequestFromJson(json);

  JsonMap toJson() => _$RemoveDeviceRequestToJson(this);
}
