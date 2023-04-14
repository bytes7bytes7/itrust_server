import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../../utils/typedef.dart';
import '../../../domain/value_objects/value_objects.dart';

part 'user_vm.freezed.dart';

part 'user_vm.g.dart';

@Freezed(
  unionKey: 'type',
)
class UserVM with _$UserVM {
  const factory UserVM.end({
    required UserID id,
    required String email,
    required String firstName,
    required List<String> avatarUrls,
    String? lastName,
    String? nick,
  }) = EndUserVM;

  const factory UserVM.staff({
    required UserID id,
    required String name,
    required List<String> avatarUrls,
    String? nick,
  }) = StaffUserVM;

  factory UserVM.fromJson(JsonMap json) => _$UserVMFromJson(json);
}
