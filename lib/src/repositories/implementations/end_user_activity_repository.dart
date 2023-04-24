import 'dart:collection';

import 'package:injectable/injectable.dart';

import '../../features/common/application/providers/date_time_provider.dart';
import '../../features/common/domain/domain.dart';
import '../interfaces/end_user_activity_repository.dart';

// TODO: remove comment when common Long-Polling is created
// const _onlineMaxDiffInMS = 10000;

@dev
@Singleton(as: EndUserActivityRepository)
class DevEndUserActivityRepository implements EndUserActivityRepository {
  DevEndUserActivityRepository({
    required DateTimeProvider dateTimeProvider,
  }) : _dateTimeProvider = dateTimeProvider;

  final DateTimeProvider _dateTimeProvider;

  // {userID: lastSeenAtMSSinceEpoch}
  final _storage = HashMap<UserID, int>();

  @override
  Future<OnlineStatus> get(UserID id) async {
    // TODO: remove when common Long-Polling is created
    return OnlineStatus(
      isOnline: true,
      lastSeenAtMSSinceEpoch: null,
    );

    // final lastSeenAtMSSinceEpoch = _storage[id];
    //
    // if (lastSeenAtMSSinceEpoch == null) {
    //   throw Exception('User not found');
    // }
    //
    // final now = _dateTimeProvider.nowUtc().millisecondsSinceEpoch;
    // final isOnline = (now - lastSeenAtMSSinceEpoch) < _onlineMaxDiffInMS;
    //
    // return OnlineStatus(
    //   isOnline: isOnline,
    //   lastSeenAtMSSinceEpoch: lastSeenAtMSSinceEpoch,
    // );
  }

  @override
  Future<void> update(UserID id) async {
    _storage[id] = _dateTimeProvider.nowUtc().millisecondsSinceEpoch;
  }
}
