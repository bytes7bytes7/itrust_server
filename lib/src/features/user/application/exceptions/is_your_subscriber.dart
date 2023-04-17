import '../../../common/application/exceptions/detailed_exception.dart';

class IsYourSubscriber extends DetailedException {
  const IsYourSubscriber()
      : super.conflict(
          code: 'user.isYourSubscriber',
          description: 'This user is your subscriber.',
        );
}
