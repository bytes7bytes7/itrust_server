import 'package:collection/collection.dart';
import 'package:injectable/injectable.dart';

import '../../features/common/domain/domain.dart';
import '../interfaces/interfaces.dart';

@dev
@Singleton(as: EndUserRepository)
class DevEndUserRepository implements EndUserRepository {
  final _storage = <UserID, EndUser>{};

  @override
  Future<void> addOrUpdate({required EndUser user}) async {
    _storage[user.id] = user;
  }

  @override
  Future<EndUser?> getByEmail({required String email}) async {
    return _storage.entries
        .firstWhereOrNull((e) => e.value.email == email)
        ?.value;
  }

  @override
  Future<EndUser?> getByID({required UserID id}) async {
    return _storage[id];
  }

  @override
  Future<EndUser?> getByNick({required String nick}) async {
    return _storage.entries
        .firstWhereOrNull((e) => e.value.nick == nick)
        ?.value;
  }

  @override
  Future<List<EndUser>> getFriendsByFilter({
    required UserID friendsTo,
    required int limit,
    UserID? startAfter,
  }) async {
    final result = <EndUser>[];

    var reachStartAfter = startAfter == null;

    final friendsOwner = _storage[friendsTo];

    if (friendsOwner == null) {
      throw Exception('User not found');
    }

    for (final id in friendsOwner.friends) {
      if (reachStartAfter) {
        final user = _storage[id];

        if (user == null) {
          continue;
        }

        result.add(user);
      } else if (id == startAfter) {
        reachStartAfter = true;
      }

      if (result.length == limit) {
        break;
      }
    }

    return result;
  }

  @override
  Future<void> addFriendBid({
    required UserID from,
    required UserID to,
  }) async {
    final fromUser = _storage[from];

    if (fromUser == null) {
      throw Exception('User not found');
    }

    final fromUserBids = List.of(fromUser.myFriendBids);

    if (fromUserBids.contains(to)) {
      throw Exception('A bid has been already sent');
    }

    _storage[from] = fromUser.copyWith(
      myFriendBids: fromUserBids..add(to),
    );

    final toUser = _storage[to];

    if (toUser == null) {
      throw Exception('User not found');
    }

    final toUserBids = List.of(toUser.friendsBidsToMe);

    if (toUserBids.contains(from)) {
      throw Exception('A bid has been already sent');
    }

    _storage[to] = toUser.copyWith(
      friendsBidsToMe: toUserBids..add(from),
    );
  }

  @override
  Future<void> removeFriendBid({
    required UserID from,
    required UserID to,
  }) async {
    final fromUser = _storage[from];

    if (fromUser == null) {
      throw Exception('User not found');
    }

    final fromUserBids = List.of(fromUser.myFriendBids);

    if (!fromUserBids.contains(to)) {
      throw Exception('A bid does not exist');
    }

    _storage[from] = fromUser.copyWith(
      myFriendBids: fromUserBids..remove(to),
    );

    final toUser = _storage[to];

    if (toUser == null) {
      throw Exception('User not found');
    }

    final toUserBids = List.of(toUser.friendsBidsToMe);

    if (!toUserBids.contains(from)) {
      throw Exception('A bid does not exist');
    }

    _storage[to] = toUser.copyWith(
      friendsBidsToMe: toUserBids..remove(from),
    );
  }

  @override
  Future<bool> hasBidToUser({
    required UserID from,
    required UserID to,
  }) async {
    final fromUser = _storage[from];

    if (fromUser == null) {
      throw Exception('User not found');
    }

    final bids = fromUser.myFriendBids;

    return bids.contains(to);
  }

  @override
  Future<List<UserID>> getBidsToUserWithFilter({
    required UserID userID,
    required int limit,
    UserID? startAfter,
  }) async {
    final result = <UserID>[];

    var reachStartAfter = startAfter == null;

    final user = _storage[userID];

    if (user == null) {
      throw Exception('User not found');
    }

    final bids = user.friendsBidsToMe;

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

    final user = _storage[userID];

    if (user == null) {
      throw Exception('User not found');
    }

    final bids = user.myFriendBids;

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
  Future<bool> isFriend({
    required UserID firstUserID,
    required UserID secondUserID,
  }) async {
    final firstUser = _storage[firstUserID];
    final secondUser = _storage[secondUserID];

    if (firstUser == null || secondUser == null) {
      throw Exception('User not found');
    }

    return firstUser.friends.contains(secondUserID);
  }

  @override
  Future<void> addFriend({
    required UserID firstUserID,
    required UserID secondUserID,
  }) async {
    final firstUser = _storage[firstUserID];
    final secondUser = _storage[secondUserID];

    if (firstUser == null || secondUser == null) {
      throw Exception('User not found');
    }

    final updatedFirstUser = firstUser.copyWith(
      friends: List.of(firstUser.friends)..add(secondUserID),
    );
    final updatedSecondUser = secondUser.copyWith(
      friends: List.of(secondUser.friends)..add(firstUserID),
    );

    _storage[firstUserID] = updatedFirstUser;
    _storage[secondUserID] = updatedSecondUser;
  }

  @override
  Future<void> removeFriend({
    required UserID firstUserID,
    required UserID secondUserID,
  }) async {
    final firstUser = _storage[firstUserID];
    final secondUser = _storage[secondUserID];

    if (firstUser == null || secondUser == null) {
      throw Exception('User not found');
    }

    final updatedFirstUser = firstUser.copyWith(
      friends: List.of(firstUser.friends)..remove(secondUserID),
    );
    final updatedSecondUser = secondUser.copyWith(
      friends: List.of(secondUser.friends)..remove(firstUserID),
    );

    _storage[firstUserID] = updatedFirstUser;
    _storage[secondUserID] = updatedSecondUser;
  }

  @override
  Future<void> subscribe({
    required UserID subscriberID,
    required UserID publisherID,
  }) async {
    final subscriber = _storage[subscriberID];
    final publisher = _storage[publisherID];

    if (subscriber == null || publisher == null) {
      throw Exception('User not found');
    }

    final updatedSubscriber = subscriber.copyWith(
      subscriptions: List.of(subscriber.subscriptions)..add(publisherID),
    );
    final updatedPublisher = publisher.copyWith(
      subscribers: List.of(publisher.subscribers)..add(subscriberID),
    );

    _storage[subscriberID] = updatedSubscriber;
    _storage[publisherID] = updatedPublisher;
  }

  @override
  Future<bool> isSubscriber({
    required UserID subscriberID,
    required UserID publisherID,
  }) async {
    final subscriber = _storage[subscriberID];
    final publisher = _storage[publisherID];

    if (subscriber == null || publisher == null) {
      throw Exception('User not found');
    }

    return subscriber.subscriptions.contains(publisherID);
  }

  @override
  Future<void> unsubscribe({
    required UserID subscriberID,
    required UserID publisherID,
  }) async {
    final subscriber = _storage[subscriberID];
    final publisher = _storage[publisherID];

    if (subscriber == null || publisher == null) {
      throw Exception('User not found');
    }

    final updatedSubscriber = subscriber.copyWith(
      subscriptions: List.of(subscriber.subscriptions)..remove(publisherID),
    );
    final updatedPublisher = publisher.copyWith(
      subscribers: List.of(publisher.subscribers)..remove(subscriberID),
    );

    _storage[subscriberID] = updatedSubscriber;
    _storage[publisherID] = updatedPublisher;
  }
}
