import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../../utils/typedef.dart';

part 'remove_device_response.g.dart';

@JsonSerializable()
class RemoveDeviceResponse {
  const RemoveDeviceResponse({
    required this.info,
  });

  final String info;

  factory RemoveDeviceResponse.fromJson(JsonMap json) =>
      _$RemoveDeviceResponseFromJson(json);

  JsonMap toJson() => _$RemoveDeviceResponseToJson(this);
}
