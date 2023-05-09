import '../../../common/application/exceptions/detailed_exception.dart';

class CanNotCreateDialogueWithYourself extends DetailedException {
  const CanNotCreateDialogueWithYourself()
      : super.conflict(
          code: 'chat.canNotCreateDialogueWithYourself',
          description: 'Can not create dialogue with yourself.',
        );
}
