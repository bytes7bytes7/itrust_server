import 'detailed_exception.dart';

class InvalidCredentials extends DetailedException {
  const InvalidCredentials()
      : super.unauthorized(
          code: 'Auth.InvalidCredentials',
          description: 'Invalid credentials.',
        );
}
