import '../../features/common/domain/domain.dart';

abstract class EndUserRepository {
  Future<EndUser> create({
    required String email,
    required String firstName,
    String? lastName,
  });

  Future<void> update({required EndUser user});

  Future<EndUser?> getByEmail({required String email});

  Future<EndUser?> getByID({required UserID id});

  Future<EndUser?> getByNick({required String nick});

  Future<int> getAmountOfUsers();

  Future<int> getAvatarsAmount({required UserID id});

  Future<String?> getAvatar({required UserID id});

  Future<List<EndUser>> getUsersByFilter({
    required int limit,
    UserID? startAfter,
  });

  Future<int> getFriendsAmount({
    required UserID userID,
  });

  Future<List<EndUser>> getFriendsByFilter({
    required UserID friendsTo,
    required int limit,
    UserID? startAfter,
  });

  Future<int> getSubscribersAmount({
    required UserID userID,
  });

  Future<List<EndUser>> getSubscribersByFilter({
    required UserID subscribersOf,
    required int limit,
    UserID? startAfter,
  });

  Future<int> getSubscriptionsAmount({
    required UserID userID,
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

  Future<int> getFriendBidsToUserAmount({
    required UserID userID,
  });

  Future<int> getFriendBidsFromUserAmount({
    required UserID userID,
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
