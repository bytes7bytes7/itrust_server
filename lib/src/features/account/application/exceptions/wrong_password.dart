import '../../../common/application/exceptions/detailed_exception.dart';

class WrongPassword extends DetailedException {
  const WrongPassword()
      : super.failure(
          code: 'password.wrong',
          description: 'Password is incorrect.',
        );
}
