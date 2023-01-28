import 'detailed_exception.dart';

class DuplicateEmail extends DetailedException {
  const DuplicateEmail()
      : super.conflict(
          code: 'User.DuplicateEmail',
          description: 'Email is already in use.',
        );
}
