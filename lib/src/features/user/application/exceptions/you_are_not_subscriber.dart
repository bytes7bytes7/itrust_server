import '../../../common/application/exceptions/detailed_exception.dart';

class YouAreNotSubscriber extends DetailedException {
  const YouAreNotSubscriber()
      : super.conflict(
          code: 'user.youAreNotSubscriber',
          description: 'You are not a subscriber.',
        );
}
