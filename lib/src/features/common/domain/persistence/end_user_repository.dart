import '../entities/user/user.dart';
import '../value_objects/user_id/user_id.dart';

abstract class EndUserRepository {
  /// Add new user to DB.
  /// Ignores id field and create new one.
  Future<EndUser> create({required EndUser user});

  Future<EndUser?> find({required UserID userID});

  Future<EndUser?> findByEmail({required String email});

  /// Updates any user's info except it's ID.
  Future<void> update({required EndUser user});

  Future<void> delete({required UserID userID});
}
