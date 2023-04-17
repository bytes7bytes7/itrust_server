import '../../../common/application/exceptions/detailed_exception.dart';

class YouAreNotFriends extends DetailedException {
  const YouAreNotFriends()
      : super.conflict(
          code: 'user.areNotFriends',
          description: 'You are not friends.',
        );
}
