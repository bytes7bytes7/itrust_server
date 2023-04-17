import '../../../common/application/exceptions/detailed_exception.dart';

class CanNotDoThisToYourself extends DetailedException {
  const CanNotDoThisToYourself()
      : super.conflict(
          code: 'user.canNotDoThisToYourself',
          description: 'You can not do this to yourself.',
        );
}
