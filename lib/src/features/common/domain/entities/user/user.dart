import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../../utils/freezed_settings.dart';
import '../../value_objects/value_objects.dart';

part 'user.freezed.dart';

@Freezed(
  unionKey: unionKey,
  toJson: false,
  fromJson: false,
)
class User with _$User {
  const factory User.end({
    required UserID id,
    required String email,
    required String firstName,
    String? lastName,
    String? nick,
  }) = EndUser;

  const factory User.staff({
    required UserID id,
    required String name,
    String? nick,
  }) = StaffUser;
}
