import '../../common/common.dart';

class AuthResult {
  AuthResult({
    required this.user,
    required this.token,
  });

  final EndUser user;
  final String token;
}
