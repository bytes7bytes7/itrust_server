import '../../domain/domain.dart';

abstract class EndUserRepository {
  Future<void> add({required EndUser user});

  Future<EndUser?> getUserByEmail({required String email});
}
