import 'detailed_exception.dart';

class UserNotFound extends DetailedException {
  const UserNotFound()
      : super.unauthorized(
          code: 'user.notFound',
          description: 'User not found.',
        );
}
