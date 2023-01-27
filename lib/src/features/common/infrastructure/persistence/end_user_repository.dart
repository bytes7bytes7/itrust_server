import 'package:collection/collection.dart';
import 'package:injectable/injectable.dart';

import '../../domain/domain.dart';

@test
@Singleton(as: EndUserRepository)
class TestEndUserRepository implements EndUserRepository {
  var _maxID = 1;
  final _storage = <UserID, EndUser>{};

  @override
  Future<EndUser> create({required EndUser user}) async {
    final id = UserID('${_maxID++}');
    final newUser = user.copyWith(
      id: id,
    );

    _storage[id] = newUser;

    return newUser;
  }

  @override
  Future<EndUser?> find({required UserID userID}) async {
    return _storage[userID];
  }

  @override
  Future<EndUser?> findByEmail({required String email}) async {
    return _storage.entries
        .firstWhereOrNull((e) => e.value.email == email)
        ?.value;
  }

  @override
  Future<void> update({required EndUser user}) async {
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
