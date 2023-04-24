import '../../features/common/domain/domain.dart';

abstract class StaffUserRepository {
  Future<void> add({required StaffUser user});

  Future<StaffUser?> getByName({required String name});

  Future<StaffUser?> getByID({required UserID id});

  Future<StaffUser?> getByNick({required String nick});

  Future<int> getAvatarsAmount({required UserID id});

  Future<String?> getAvatar({required UserID id});

  Future<int> getAmountOfUsers();

  Future<List<StaffUser>> getUsersByFilter({
    required int limit,
    UserID? startAfter,
  });
}
