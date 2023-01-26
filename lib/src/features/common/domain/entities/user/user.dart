import 'package:freezed_annotation/freezed_annotation.dart';

import '../../value_objects/value_objects.dart';

part 'user.freezed.dart';

part 'user.g.dart';

@Freezed(
  unionKey: 'type',
)
class User with _$User {
  const factory User.end({
    required UserID id,
    required String email,
    // TODO: replace with hashedPassword
    required String password,
  }) = EndUser;

  const factory User.staff({
    required UserID id,
  }) = StaffUser;

  factory User.fromJson(Map<String, Object?> json) => _$UserFromJson(json);
}
