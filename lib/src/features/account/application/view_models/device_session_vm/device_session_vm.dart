import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../../utils/typedef.dart';
import '../../../domain/value_objects/device_session_id/device_session_id.dart';
import '../device_info_vm/device_info_vm.dart';

part 'device_session_vm.g.dart';

@JsonSerializable()
class DeviceSessionVM {
  const DeviceSessionVM({
    required this.id,
    required this.deviceInfo,
    required this.ip,
    required this.createdAt,
  });

  final DeviceSessionID id;
  final DeviceInfoVM deviceInfo;
  final String ip;
  final DateTime createdAt;

  factory DeviceSessionVM.fromJson(JsonMap json) =>
      _$DeviceSessionVMFromJson(json);

  JsonMap toJson() => _$DeviceSessionVMToJson(this);
}
