import 'package:collection/collection.dart';
import 'package:injectable/injectable.dart';

import '../../application/repositories/repositories.dart';
import '../../domain/entities/user/user.dart';
import '../../domain/value_objects/user_id/user_id.dart';

@test
@Singleton(as: StaffUserRepository)
class TestStaffUserRepository implements StaffUserRepository {
  final _storage = <UserID, StaffUser>{};

  @override
  Future<void> add({required StaffUser user}) async {
    _storage[user.id] = user;
  }

  @override
  Future<StaffUser?> getByName({required String name}) async {
    return _storage.entries
        .firstWhereOrNull((e) => e.value.name == name)
        ?.value;
  }

  @override
  Future<StaffUser?> getByID({required UserID id}) async {
    return _storage[id];
  }
}
