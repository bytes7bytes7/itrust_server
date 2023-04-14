import '../../../common/application/exceptions/detailed_exception.dart';

class CanNotRespondFriendBidToYourself extends DetailedException {
  const CanNotRespondFriendBidToYourself()
      : super.conflict(
          code: 'bid.canNotRespondToYourself',
          description: 'Unable to respond a friend bid to yourself.',
        );
}
