import '../../../common/application/exceptions/detailed_exception.dart';

class NotYourSubscriber extends DetailedException {
  const NotYourSubscriber()
      : super.conflict(
          code: 'user.notYourSubscriber',
          description: 'The user is not your subscriber.',
        );
}
