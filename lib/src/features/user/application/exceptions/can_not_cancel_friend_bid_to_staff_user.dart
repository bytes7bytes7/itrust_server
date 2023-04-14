import '../../../common/application/exceptions/detailed_exception.dart';

class CanNotCancelFriendBidToStaffUser extends DetailedException {
  const CanNotCancelFriendBidToStaffUser()
      : super.conflict(
          code: 'bid.canNotCancelToStaffUser',
          description: 'Unable to cancel a friend bid to a staff user.',
        );
}
