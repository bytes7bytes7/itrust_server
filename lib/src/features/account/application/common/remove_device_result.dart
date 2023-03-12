import '../../domain/domain.dart';

class RemoveDeviceResult {
  const RemoveDeviceResult({
    required this.thisSession,
    required this.otherSessions,
  });

  final DeviceSession thisSession;
  final List<DeviceSession> otherSessions;
}
