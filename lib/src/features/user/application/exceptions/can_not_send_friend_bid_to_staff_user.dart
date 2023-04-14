import '../../../common/application/exceptions/detailed_exception.dart';

class CanNotSendFriendBidToStaffUser extends DetailedException {
  const CanNotSendFriendBidToStaffUser()
      : super.conflict(
          code: 'bid.canNotSendToStaffUser',
          description: 'Unable to send a friend bid to a staff user.',
        );
}
