import 'package:mapster/mapster.dart';

import '../../application/application.dart';
import '../../domain/domain.dart';

class DeviceSessionToDeviceSessionVMMapper
    extends OneSourceMapper<DeviceSession, DeviceSessionVM> {
  DeviceSessionToDeviceSessionVMMapper(super.input);

  @override
  DeviceSessionVM map() {
    return DeviceSessionVM(
      id: _session.id,
      deviceInfo: DeviceInfoVM(
        name: _session.deviceInfo.name,
        platform: _session.deviceInfo.platform,
      ),
      ip: _session.ip,
      createdAt: _session.createdAt,
    );
  }

  DeviceSession get _session => source;
}
