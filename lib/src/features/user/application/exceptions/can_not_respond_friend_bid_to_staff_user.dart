import '../../../common/application/exceptions/detailed_exception.dart';

class CanNotRespondFriendBidToStaffUser extends DetailedException {
  const CanNotRespondFriendBidToStaffUser()
      : super.conflict(
          code: 'bid.canNotRespondToStaffUser',
          description: 'Unable to respond a friend bid to a staff user.',
        );
}
