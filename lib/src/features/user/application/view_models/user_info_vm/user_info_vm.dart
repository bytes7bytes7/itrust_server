import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../../utils/typedef.dart';
import '../../../../common/application/view_models/user_vm/user_vm.dart';

part 'user_info_vm.freezed.dart';

part 'user_info_vm.g.dart';

@Freezed(
  unionKey: 'type',
)
class UserInfoVM with _$UserInfoVM {
  const factory UserInfoVM.end({
    required EndUserVM user,
    required int friendsAmount,
    required int postsAmount,
    required int subscribersAmount,
    required bool amIFriend,
    required bool amISubscriber,
    required bool didISentFriendBid,
    required bool haveIFriendBidFromThisUser,
  }) = EndUserInfoVM;

  const factory UserInfoVM.staff({
    required StaffUserVM user,
  }) = StaffUserInfoVM;

  factory UserInfoVM.fromJson(JsonMap json) => _$UserInfoVMFromJson(json);
}
