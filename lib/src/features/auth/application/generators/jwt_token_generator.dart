import '../../../common/common.dart';

abstract class JwtTokenGenerator {
  String generate(EndUser user);
}
