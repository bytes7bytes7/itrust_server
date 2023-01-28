import 'detailed_exception.dart';

class InvalidCredentials extends DetailedException {
  const InvalidCredentials()
      : super.validation(
          code: 'Auth.InvalidCredentials',
          description: 'Invalid credentials.',
        );
}
