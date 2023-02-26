import '../../domain/domain.dart';

abstract class EndUserRepository {
  Future<void> add({required EndUser user});

  Future<EndUser?> getByEmail({required String email});

  Future<EndUser?> getByID({required UserID id});
}
