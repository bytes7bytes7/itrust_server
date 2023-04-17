import '../../../common/application/exceptions/detailed_exception.dart';

class YouAlreadyFriends extends DetailedException {
  const YouAlreadyFriends()
      : super.conflict(
          code: 'user.alreadyFriends',
          description: 'You are already friends.',
        );
}
