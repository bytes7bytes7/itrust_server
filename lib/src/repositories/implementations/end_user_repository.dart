import 'dart:collection';

import 'package:collection/collection.dart';
import 'package:injectable/injectable.dart';

import '../../features/common/domain/domain.dart';
import '../interfaces/interfaces.dart';

@dev
@Singleton(as: EndUserRepository)
class DevEndUserRepository implements EndUserRepository {
  final _storage = HashMap<UserID, EndUser>();

  // TODO: replace url with Media
  final _avatarUrls = HashMap<UserID, List<String>>();
  final _friends = HashMap<UserID, List<UserID>>();
  final _subscribers = HashMap<UserID, List<UserID>>();
  final _subscriptions = HashMap<UserID, List<UserID>>();
  final _myFriendBids = HashMap<UserID, List<UserID>>();
  final _friendsBidsToMe = HashMap<UserID, List<UserID>>();

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
  Future<int> getAmountOfUsers() async {
    return _storage.keys.length;
  }

  @override
  Future<int> getAvatarsAmount({required UserID id}) async {
    final user = _storage[id];

    if (user == null) {
      throw Exception('User not found');
    }

    final avatars = _avatarUrls[id] ?? [];

    return avatars.length;
  }

  @override
  Future<String?> getAvatar({required UserID id}) async {
    final user = _storage[id];

    if (user == null) {
      throw Exception('User not found');
    }

    final avatars = _avatarUrls[id] ?? [];

    return avatars.firstOrNull;
  }

  @override
  Future<List<EndUser>> getUsersByFilter({
    required int limit,
    UserID? startAfter,
  }) async {
    final result = <EndUser>[];

    var reachStartAfter = startAfter == null;

    for (final id in _storage.keys) {
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
  Future<int> getFriendsAmount({
    required UserID userID,
  }) async {
    final friendsOwner = _storage[userID];

    if (friendsOwner == null) {
      throw Exception('User not found');
    }

    final friends = _friends[userID] ?? [];

    return friends.length;
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

    final friends = _friends[friendsTo] ?? [];

    for (final id in friends) {
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
  Future<int> getSubscribersAmount({
    required UserID userID,
  }) async {
    final publisher = _storage[userID];

    if (publisher == null) {
      throw Exception('User not found');
    }

    final subscribers = _subscribers[userID] ?? [];

    return subscribers.length;
  }

  @override
  Future<List<EndUser>> getSubscribersByFilter({
    required UserID subscribersOf,
    required int limit,
    UserID? startAfter,
  }) async {
    final result = <EndUser>[];

    var reachStartAfter = startAfter == null;

    final publisher = _storage[subscribersOf];

    if (publisher == null) {
      throw Exception('User not found');
    }

    final subscribers = _subscribers[subscribersOf] ?? [];

    for (final id in subscribers) {
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
  Future<int> getSubscriptionsAmount({
    required UserID userID,
  }) async {
    final subscriber = _storage[userID];

    if (subscriber == null) {
      throw Exception('User not found');
    }

    final subscriptions = _subscriptions[userID] ?? [];

    return subscriptions.length;
  }

  @override
  Future<List<EndUser>> getSubscriptionsByFilter({
    required UserID subscriptionsOf,
    required int limit,
    UserID? startAfter,
  }) async {
    final result = <EndUser>[];

    var reachStartAfter = startAfter == null;

    final subscriber = _storage[subscriptionsOf];

    if (subscriber == null) {
      throw Exception('User not found');
    }

    final subscriptions = _subscriptions[subscriptionsOf] ?? [];

    for (final id in subscriptions) {
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

    final fromUserBids = List.of(_myFriendBids[from] ?? <UserID>[]);

    if (fromUserBids.contains(to)) {
      throw Exception('A bid has been already sent');
    }

    _myFriendBids[from] = fromUserBids..add(to);

    final toUser = _storage[to];

    if (toUser == null) {
      throw Exception('User not found');
    }

    final toUserBids = List.of(_friendsBidsToMe[to] ?? <UserID>[]);

    if (toUserBids.contains(from)) {
      throw Exception('A bid has been already sent');
    }

    _friendsBidsToMe[to] = toUserBids..add(from);
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

    final fromUserBids = List.of(_myFriendBids[from] ?? <UserID>[]);

    if (!fromUserBids.contains(to)) {
      throw Exception('A bid does not exist');
    }

    _myFriendBids[from] = fromUserBids..remove(to);

    final toUser = _storage[to];

    if (toUser == null) {
      throw Exception('User not found');
    }

    final toUserBids = List.of(_friendsBidsToMe[to] ?? <UserID>[]);

    if (!toUserBids.contains(from)) {
      throw Exception('A bid does not exist');
    }

    _friendsBidsToMe[to] = toUserBids..remove(from);
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

    final bids = _myFriendBids[from] ?? [];

    return bids.contains(to);
  }

  @override
  Future<int> getFriendBidsToUserAmount({
    required UserID userID,
  }) async {
    final user = _storage[userID];

    if (user == null) {
      throw Exception('User not found');
    }

    final bids = _friendsBidsToMe[userID] ?? [];

    return bids.length;
  }

  @override
  Future<int> getFriendBidsFromUserAmount({
    required UserID userID,
  }) async {
    final user = _storage[userID];

    if (user == null) {
      throw Exception('User not found');
    }

    final bids = _myFriendBids[userID] ?? [];

    return bids.length;
  }

  @override
  Future<List<EndUser>> getUsersWithBidsToUserWithFilter({
    required UserID userID,
    required int limit,
    UserID? startAfter,
  }) async {
    final result = <EndUser>[];

    var reachStartAfter = startAfter == null;

    final user = _storage[userID];

    if (user == null) {
      throw Exception('User not found');
    }

    final bids = _friendsBidsToMe[userID] ?? [];

    for (final bid in bids) {
      if (reachStartAfter) {
        final user = _storage[bid];

        if (user == null) {
          continue;
        }

        result.add(user);
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
  Future<List<EndUser>> getUsersWithBidsFromUserWithFilter({
    required UserID userID,
    required int limit,
    UserID? startAfter,
  }) async {
    final result = <EndUser>[];

    var reachStartAfter = startAfter == null;

    final user = _storage[userID];

    if (user == null) {
      throw Exception('User not found');
    }

    final bids = _myFriendBids[userID] ?? [];

    for (final bid in bids) {
      if (reachStartAfter) {
        final user = _storage[bid];

        if (user == null) {
          continue;
        }

        result.add(user);
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

    final firstUserFriends = _myFriendBids[firstUserID] ?? [];

    return firstUserFriends.contains(secondUserID);
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

    _friends[firstUserID] = (_friends[firstUserID] ?? [])..add(secondUserID);
    _friends[secondUserID] = (_friends[secondUserID] ?? [])..add(firstUserID);
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

    _friends[firstUserID] = (_friends[firstUserID] ?? [])..remove(secondUserID);
    _friends[secondUserID] = (_friends[secondUserID] ?? [])
      ..remove(firstUserID);
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

    _subscriptions[subscriberID] = (_subscriptions[subscriberID] ?? [])
      ..add(publisherID);
    _subscribers[publisherID] = (_subscribers[publisherID] ?? [])
      ..add(subscriberID);
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

    _subscriptions[subscriberID] = (_subscriptions[subscriberID] ?? [])
      ..remove(publisherID);
    _subscribers[publisherID] = (_subscribers[publisherID] ?? [])
      ..remove(subscriberID);
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

    final subscribers = _subscribers[publisherID] ?? [];

    return subscribers.contains(subscriberID);
  }

  @override
  Future<bool> isPublisher({
    required UserID subscriberID,
    required UserID publisherID,
  }) async {
    final subscriber = _storage[subscriberID];
    final publisher = _storage[publisherID];

    if (subscriber == null || publisher == null) {
      throw Exception('User not found');
    }

    final subscriptions = _subscriptions[subscriberID] ?? [];

    return subscriptions.contains(publisherID);
  }
}
