import '../../../common/application/exceptions/detailed_exception.dart';

class YouAreSubscriber extends DetailedException {
  const YouAreSubscriber()
      : super.conflict(
          code: 'user.youAreSubscriber',
          description: 'You are subscriber.',
        );
}
