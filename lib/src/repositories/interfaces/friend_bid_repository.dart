import '../../features/common/domain/domain.dart';

abstract class FriendBidRepository {
  Future<void> add({
    required UserID from,
    required UserID to,
  });

  Future<void> remove({
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

  Future<int> getBidsToUserAmount(UserID id);

  Future<int> getBidsFromUserAmount(UserID id);

  Future<bool> hasBidToUser({
    required UserID from,
    required UserID to,
  });
}
