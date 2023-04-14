import '../../../common/application/exceptions/detailed_exception.dart';

class BidAlreadySent extends DetailedException {
  const BidAlreadySent()
      : super.conflict(
          code: 'bid.alreadySent',
          description: 'A bid to this user is already sent.',
        );
}
