import 'device_info/device_info.dart';
import 'token_pair.dart';

class FullSessionInfo {
  const FullSessionInfo({
    required this.id,
    required this.tokenPair,
    required this.deviceInfo,
    required this.ip,
    required this.createdAt,
  });

  final int id;
  final TokenPair tokenPair;
  final DeviceInfo deviceInfo;
  final String ip;
  final DateTime createdAt;
}
