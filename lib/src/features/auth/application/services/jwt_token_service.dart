import '../../../common/common.dart';

enum JwtVerificationStatus {
  verified,
  expired,
  invalid,
}

abstract class JwtTokenService {
  String generate(EndUser user);

  JwtVerificationStatus verify(String token);
}
