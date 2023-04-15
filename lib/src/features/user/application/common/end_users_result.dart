import '../../../common/application/view_models/user_vm/user_vm.dart';

class EndUsersResult {
  const EndUsersResult({
    required this.users,
  });

  final List<EndUserVM> users;
}
