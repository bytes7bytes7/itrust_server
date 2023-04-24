import 'package:mapster/mapster.dart';

import '../../../common/application/mapper_dto/to_user_info_vm.dart';
import '../../../common/application/view_models/user_vm/user_vm.dart';
import '../../../common/domain/domain.dart';
import '../../application/view_models/user_info_vm/user_info_vm.dart';

class EndUserToUserInfoVMMapper
    extends TwoSourcesMapper<EndUser, ToUserInfoVM, UserInfoVM> {
  EndUserToUserInfoVMMapper(
    super.input, {
    required Mapster mapster,
  }) : _mapster = mapster;

  final Mapster _mapster;

  @override
  UserInfoVM map() {
    return UserInfoVM.end(
      user: _mapster.map2(
        _user,
        _dto.toUserVM,
        To<EndUserVM>(),
      ),
      friendsAmount: _dto.friendsAmount,
      subscribersAmount: _dto.subscribersAmount,
      postsAmount: _dto.postsAmount,
      amIFriend: _dto.amIFriend,
      amISubscriber: _dto.amISubscriber,
      areTheySubscribedToMe: _dto.areTheySubscribedToMe,
      didISentFriendBid: _dto.didISentFriendBid,
      haveIFriendBidFromThisUser: _dto.haveIFriendBidFromThisUser,
    );
  }

  EndUser get _user => source1;

  ToUserInfoVM get _dto => source2;
}
