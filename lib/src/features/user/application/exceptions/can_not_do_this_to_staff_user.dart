import '../../../common/application/exceptions/detailed_exception.dart';

class CanNotDoThisToStaffUser extends DetailedException {
  const CanNotDoThisToStaffUser()
      : super.conflict(
          code: 'user.canNotDoThisToStaffUser',
          description: 'You can not do this to staff user.',
        );
}
