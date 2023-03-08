import 'dart:collection';

import 'package:injectable/injectable.dart';

import '../../../common/domain/value_objects/user_id/user_id.dart';
import '../../application/application.dart';

@test
@Singleton(as: PasswordHashRepository)
class TestPasswordHashRepository implements PasswordHashRepository {
  final _storage = HashMap<UserID, String>();

  @override
  Future<String?> getHashByID({required UserID userID}) async {
    return _storage[userID];
  }

  @override
  Future<void> saveHashByID({
    required UserID userID,
    required String passwordHash,
  }) async {
    _storage[userID] = passwordHash;
  }
}
