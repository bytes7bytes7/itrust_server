import '../../domain/domain.dart';

abstract class StaffUserRepository {
  Future<void> add({required StaffUser user});

  Future<StaffUser?> getByName({required String name});

  Future<StaffUser?> getByID({required UserID id});
}
