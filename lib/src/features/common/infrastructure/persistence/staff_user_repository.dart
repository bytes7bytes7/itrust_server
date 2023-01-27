import 'package:injectable/injectable.dart';

import '../../domain/domain.dart';

@test
@Singleton(as: StaffUserRepository)
class TestStaffUserRepository implements StaffUserRepository {
  var _maxID = 1;
  final _storage = <UserID, StaffUser>{};

  @override
  Future<StaffUser> create({required StaffUser user}) async {
    final id = UserID('${_maxID++}');
    final newUser = user.copyWith(
      id: id,
    );

    _storage[id] = newUser;

    return newUser;
  }

  @override
  Future<StaffUser?> find({required UserID userID}) async {
    return _storage[userID];
  }

  @override
  Future<void> update({required StaffUser user}) async {
    final oldUser = _storage[user.id];

    if (oldUser == null) {
      throw Exception('User not found');
    }

    _storage[oldUser.id] = user;
  }

  @override
  Future<void> delete({required UserID userID}) async {
    final userExists = _storage[userID] != null;

    if (!userExists) {
      throw Exception('User not found');
    }

    _storage.remove(userID);
  }
}
