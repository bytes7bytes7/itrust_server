import '../../../itrust_server.dart';
import '../../features/common/domain/domain.dart';

class OnlineStatus {
  const OnlineStatus({
    required this.isOnline,
    required this.lastSeenAtMSSinceEpoch,
  });

  const OnlineStatus.empty()
      : isOnline = false,
        lastSeenAtMSSinceEpoch = 0;

  final bool isOnline;
  final int? lastSeenAtMSSinceEpoch;
}

// TODO: create common Long-Polling handler, so this way client can get all
// events and EndUserActivityRepository can monitor online status of user
abstract class EndUserActivityRepository {
  Future<OnlineStatus> get(UserID id);

  Future<void> update(UserID id);
}
