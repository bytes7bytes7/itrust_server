import '../../../common/application/exceptions/detailed_exception.dart';

class DuplicatedUserIDs extends DetailedException {
  const DuplicatedUserIDs()
      : super.conflict(
          code: 'chat.duplicatedUserIDs',
          description: 'You duplicated user IDs.',
        );
}
