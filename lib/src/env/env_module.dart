import 'package:injectable/injectable.dart';

import '../utils/jwt_settings.dart';
import 'env.dart';

@module
abstract class EnvModule {
  @singleton
  JwtSettings get jwtSettings => JwtSettings(
        secret: Env.jwtSecret,
        issuer: Env.jwtIssuer,
        expiresInMins: int.parse(Env.jwtExpiresInMins),
        audience: Env.jwtAudience,
      );
}
