import 'package:collection/collection.dart';
import 'package:injectable/injectable.dart';

import '../../features/common/domain/entities/user/user.dart';
import '../../features/common/domain/value_objects/user_id/user_id.dart';
import '../interfaces/interfaces.dart';

@dev
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

  @override
  Future<StaffUser?> getByNick({required String nick}) async {
    return _storage.entries
        .firstWhereOrNull((e) => e.value.nick == nick)
        ?.value;
  }

  @override
  Future<List<StaffUser>> getUsersByFilter({
    required int limit,
    UserID? startAfter,
  }) async {
    final result = <StaffUser>[];

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
}
