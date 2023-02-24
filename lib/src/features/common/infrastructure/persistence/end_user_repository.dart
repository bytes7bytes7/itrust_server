import 'package:collection/collection.dart';
import 'package:injectable/injectable.dart';

import '../../application/application.dart';
import '../../domain/domain.dart';

@test
@Singleton(as: EndUserRepository)
class TestEndUserRepository implements EndUserRepository {
  final _storage = <UserID, EndUser>{};

  @override
  Future<void> add({required EndUser user}) async {
    _storage[user.id] = user;
  }

  @override
  Future<EndUser?> getByEmail({required String email}) async {
    return _storage.entries
        .firstWhereOrNull((e) => e.value.email == email)
        ?.value;
  }

  @override
  Future<EndUser?> getByID({required UserID id}) async {
    return _storage[id];
  }
}
