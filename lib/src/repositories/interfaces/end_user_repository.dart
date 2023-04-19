import '../../features/common/domain/domain.dart';

abstract class EndUserRepository {
  Future<void> addOrUpdate({required EndUser user});

  Future<EndUser?> getByEmail({required String email});

  Future<EndUser?> getByID({required UserID id});

  Future<EndUser?> getByNick({required String nick});

  Future<int> getAmountOfUsers();

  Future<List<EndUser>> getUsersByFilter({
    required int limit,
    UserID? startAfter,
  });

  Future<List<EndUser>> getFriendsByFilter({
    required UserID friendsTo,
    required int limit,
    UserID? startAfter,
  });

  Future<List<EndUser>> getSubscribersByFilter({
    required UserID subscribersOf,
    required int limit,
    UserID? startAfter,
  });

  Future<List<EndUser>> getSubscriptionsByFilter({
    required UserID subscriptionsOf,
    required int limit,
    UserID? startAfter,
  });

  Future<void> addFriendBid({
    required UserID from,
    required UserID to,
  });

  Future<void> removeFriendBid({
    required UserID from,
    required UserID to,
  });

  Future<bool> hasBidToUser({
    required UserID from,
    required UserID to,
  });

  Future<List<EndUser>> getUsersWithBidsToUserWithFilter({
    required UserID userID,
    required int limit,
    UserID? startAfter,
  });

  Future<List<EndUser>> getUsersWithBidsFromUserWithFilter({
    required UserID userID,
    required int limit,
    UserID? startAfter,
  });

  Future<bool> isFriend({
    required UserID firstUserID,
    required UserID secondUserID,
  });

  Future<void> addFriend({
    required UserID firstUserID,
    required UserID secondUserID,
  });

  Future<void> removeFriend({
    required UserID firstUserID,
    required UserID secondUserID,
  });

  Future<void> subscribe({
    required UserID subscriberID,
    required UserID publisherID,
  });

  Future<void> unsubscribe({
    required UserID subscriberID,
    required UserID publisherID,
  });

  Future<bool> isSubscriber({
    required UserID subscriberID,
    required UserID publisherID,
  });

  Future<bool> isPublisher({
    required UserID subscriberID,
    required UserID publisherID,
  });
}
