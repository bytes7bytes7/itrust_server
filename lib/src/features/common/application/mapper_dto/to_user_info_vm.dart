import 'to_user_vm.dart';

class ToUserInfoVM {
  const ToUserInfoVM({
    required this.toUserVM,
    required this.friendsAmount,
    required this.subscribersAmount,
    required this.postsAmount,
    required this.amIFriend,
    required this.amISubscriber,
    required this.areTheySubscribedToMe,
    required this.didISentFriendBid,
    required this.haveIFriendBidFromThisUser,
  });

  final ToUserVM toUserVM;
  final int friendsAmount;
  final int subscribersAmount;
  final int postsAmount;
  final bool amIFriend;
  final bool amISubscriber;
  final bool areTheySubscribedToMe;
  final bool didISentFriendBid;
  final bool haveIFriendBidFromThisUser;
}
