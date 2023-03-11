import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../../utils/typedef.dart';

part 'get_devices_request.g.dart';

@JsonSerializable()
class GetDevicesRequest {
  const GetDevicesRequest();

  factory GetDevicesRequest.fromJson(JsonMap json) =>
      _$GetDevicesRequestFromJson(json);

  JsonMap toJson() => _$GetDevicesRequestToJson(this);
}
