import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../../utils/typedef.dart';

part 'device_info_vm.g.dart';

@JsonSerializable()
class DeviceInfoVM {
  const DeviceInfoVM({
    required this.name,
    required this.platform,
  });

  final String name;
  final String platform;

  factory DeviceInfoVM.fromJson(JsonMap json) => _$DeviceInfoVMFromJson(json);

  JsonMap toJson() => _$DeviceInfoVMToJson(this);
}
