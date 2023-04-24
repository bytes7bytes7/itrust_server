import '../../../itrust_server.dart';
import '../../features/common/domain/domain.dart';

// TODO: create common Long-Polling handler, so this way client can get all
// events and EndUserActivityRepository can monitor online status of user
abstract class EndUserActivityRepository {
  Future<OnlineStatus> get(UserID id);

  Future<void> update(UserID id);
}
