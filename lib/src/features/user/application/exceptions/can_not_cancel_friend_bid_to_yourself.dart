import '../../../common/application/exceptions/detailed_exception.dart';

class CanNotCancelFriendBidToYourself extends DetailedException {
  const CanNotCancelFriendBidToYourself()
      : super.conflict(
          code: 'bid.canNotCancelToYourself',
          description: 'Unable to cancel a friend bid to yourself.',
        );
}
