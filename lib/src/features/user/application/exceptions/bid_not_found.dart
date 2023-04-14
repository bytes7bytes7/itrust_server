import '../../../common/application/exceptions/detailed_exception.dart';

class BidNotFound extends DetailedException {
  const BidNotFound()
      : super.conflict(
          code: 'bid.notFound',
          description: 'Bid not found.',
        );
}
