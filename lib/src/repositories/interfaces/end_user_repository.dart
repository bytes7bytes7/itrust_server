import '../../features/common/domain/domain.dart';

abstract class EndUserRepository {
  Future<void> addOrUpdate({required EndUser user});

  Future<EndUser?> getByEmail({required String email});

  Future<EndUser?> getByID({required UserID id});

  Future<EndUser?> getByNick({required String nick});

  Future<List<EndUser>> getFriendsByFilter({
    required UserID friendsTo,
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

  Future<List<UserID>> getBidsToUserWithFilter({
    required UserID userID,
    required int limit,
    UserID? startAfter,
  });

  Future<List<UserID>> getBidsFromUserWithFilter({
    required UserID userID,
    required int limit,
    UserID? startAfter,
  });
}
