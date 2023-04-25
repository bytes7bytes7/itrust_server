import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../../utils/freezed_settings.dart';
import '../../../../../utils/typedef.dart';
import '../../../domain/value_objects/value_objects.dart';

part 'user_vm.freezed.dart';

part 'user_vm.g.dart';

@Freezed(
  unionKey: unionKey,
)
class UserVM with _$UserVM {
  const factory UserVM.end({
    required UserID id,
    required String email,
    required String firstName,
    required int avatarsAmount,
    required bool isOnline,
    int? lastSeenAtMSSinceEpoch,
    String? avatarUrl,
    String? lastName,
    String? nick,
  }) = EndUserVM;

  const factory UserVM.staff({
    required UserID id,
    required String name,
    required int avatarsAmount,
    String? avatarUrl,
    String? nick,
  }) = StaffUserVM;

  factory UserVM.fromJson(JsonMap json) => _$UserVMFromJson(json);
}
