import '../../domain/domain.dart';

class GetDevicesResult {
  const GetDevicesResult({
    required this.thisSession,
    required this.otherSessions,
  });

  final DeviceSession thisSession;
  final List<DeviceSession> otherSessions;
}
