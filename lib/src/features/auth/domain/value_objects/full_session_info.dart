import 'package:equatable/equatable.dart';

import 'device_info/device_info.dart';
import 'token_pair.dart';

class FullSessionInfo extends Equatable {
  const FullSessionInfo({
    required this.tokenPair,
    required this.deviceInfo,
    required this.ip,
    required this.createdAt,
  });

  final TokenPair tokenPair;
  final DeviceInfo deviceInfo;
  final String ip;
  final DateTime createdAt;

  @override
  List<Object?> get props => [
        tokenPair,
        deviceInfo,
        ip,
        createdAt,
      ];
}
