import '../../../common/application/exceptions/detailed_exception.dart';

class CanNotSendFriendBidToYourself extends DetailedException {
  const CanNotSendFriendBidToYourself()
      : super.conflict(
          code: 'bid.canNotSendToYourself',
          description: 'Unable to send a friend bid to yourself.',
        );
}
