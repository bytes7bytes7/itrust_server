import 'dart:collection';

import 'package:injectable/injectable.dart';

import '../../features/common/domain/domain.dart';
import '../interfaces/friend_bid_repository.dart';

@dev
@Singleton(as: FriendBidRepository)
class DevFriendBidRepository implements FriendBidRepository {
  // {to_this_user: these_users_send_bids}
  final _bidsToUser = HashMap<UserID, List<UserID>>();

  // {from_this_user: these_users_get_bids}
  final _bidsFromUser = HashMap<UserID, List<UserID>>();

  @override
  Future<void> add({
    required UserID from,
    required UserID to,
  }) async {
    final fromUserBids = List.of(_bidsFromUser[from] ?? <UserID>[]);

    if (fromUserBids.contains(to)) {
      throw Exception('A bid has been already sent');
    }

    _bidsFromUser[from] = fromUserBids..add(to);

    final toUserBids = List.of(_bidsToUser[to] ?? <UserID>[]);

    if (toUserBids.contains(from)) {
      throw Exception('A bid has been already sent');
    }

    _bidsToUser[to] = toUserBids..add(from);
  }

  @override
  Future<void> remove({
    required UserID from,
    required UserID to,
  }) async {
    final fromUserBids = List.of(_bidsFromUser[from] ?? <UserID>[]);

    if (!fromUserBids.contains(to)) {
      throw Exception('A bid does not exist');
    }

    _bidsFromUser[from] = fromUserBids..remove(to);

    final toUserBids = List.of(_bidsToUser[to] ?? <UserID>[]);

    if (!toUserBids.contains(from)) {
      throw Exception('A bid does not exist');
    }

    _bidsToUser[to] = toUserBids..remove(from);
  }

  @override
  Future<List<UserID>> getBidsToUserWithFilter({
    required UserID userID,
    required int limit,
    UserID? startAfter,
  }) async {
    final result = <UserID>[];

    var reachStartAfter = startAfter == null;

    final bids = _bidsToUser[userID] ?? <UserID>[];

    for (final bid in bids) {
      if (reachStartAfter) {
        result.add(bid);
      } else if (bid == startAfter) {
        reachStartAfter = true;
      }

      if (result.length == limit) {
        break;
      }
    }

    return result;
  }

  @override
  Future<List<UserID>> getBidsFromUserWithFilter({
    required UserID userID,
    required int limit,
    UserID? startAfter,
  }) async {
    final result = <UserID>[];

    var reachStartAfter = startAfter == null;

    final bids = _bidsFromUser[userID] ?? <UserID>[];

    for (final bid in bids) {
      if (reachStartAfter) {
        result.add(bid);
      } else if (bid == startAfter) {
        reachStartAfter = true;
      }

      if (result.length == limit) {
        break;
      }
    }

    return result;
  }

  @override
  Future<int> getBidsToUserAmount(UserID id) async {
    return _bidsToUser[id]?.length ?? 0;
  }

  @override
  Future<int> getBidsFromUserAmount(UserID id) async {
    return _bidsFromUser[id]?.length ?? 0;
  }

  @override
  Future<bool> hasBidToUser({
    required UserID from,
    required UserID to,
  }) async {
    final bids = _bidsFromUser[from] ?? <UserID>[];

    return bids.contains(to);
  }
}
