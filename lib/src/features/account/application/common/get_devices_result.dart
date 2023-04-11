import '../view_models/view_models.dart';

class GetDevicesResult {
  const GetDevicesResult({
    required this.thisSession,
    required this.otherSessions,
  });

  final DeviceSessionVM thisSession;
  final List<DeviceSessionVM> otherSessions;
}
