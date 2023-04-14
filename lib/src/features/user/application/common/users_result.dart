import '../../../common/application/view_models/user_vm/user_vm.dart';

class UsersResult {
  const UsersResult({
    required this.users,
  });

  final List<UserVM> users;
}
