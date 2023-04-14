import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../../utils/typedef.dart';
import '../../../../common/domain/domain.dart';

part 'user_info_vm.freezed.dart';

part 'user_info_vm.g.dart';

@Freezed(
  unionKey: 'type',
)
class UserInfoVM with _$UserInfoVM {
  const factory UserInfoVM.end({
    required UserID id,
    required String email,
    required String firstName,
    required List<String> avatarUrls,
    required int friendsAmount,
    required int postsAmount,
    required int subscribersAmount,
    required bool amIFriend,
    required bool amISubscriber,
    required bool didISentFriendBid,
    String? lastName,
    String? nick,
  }) = EndUserInfoVM;

  const factory UserInfoVM.staff({
    required UserID id,
    required String name,
    required List<String> avatarUrls,
    String? nick,
  }) = StaffUserInfoVM;

  factory UserInfoVM.fromJson(JsonMap json) => _$UserInfoVMFromJson(json);
}
