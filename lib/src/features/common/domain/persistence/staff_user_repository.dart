import '../entities/user/user.dart';
import '../value_objects/user_id/user_id.dart';

abstract class StaffUserRepository {
  /// Add new user to DB.
  /// Ignores id field and create new one.
  Future<void> create({required StaffUser user});

  Future<StaffUser?> find({required UserID userID});

  /// Updates any user's info except it's ID.
  Future<void> update({required StaffUser user});

  Future<void> delete({required UserID userID});
}
