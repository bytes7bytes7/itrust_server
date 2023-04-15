import '../../../common/application/exceptions/detailed_exception.dart';

class AlreadyHaveBid extends DetailedException {
  const AlreadyHaveBid()
      : super.conflict(
          code: 'bid.alreadyHave',
          description: 'You already have bid from this user.',
        );
}
