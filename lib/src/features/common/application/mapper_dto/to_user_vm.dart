import '../../domain/domain.dart';

class ToUserVM {
  const ToUserVM({
    required this.onlineStatus,
    required this.avatarsAmount,
    required this.avatarUrl,
  });

  final OnlineStatus onlineStatus;
  final int avatarsAmount;
  final String? avatarUrl;
}
