// ignore_for_file: avoid_classes_with_only_static_members

import 'package:envied/envied.dart';

part 'env.g.dart';

@Envied(path: '.env.dev', obfuscate: true)
abstract class Env {
  @EnviedField(varName: 'JWT_SECRET')
  static final jwtSecret = _Env.jwtSecret;

  @EnviedField(varName: 'JWT_ISSUER')
  static final jwtIssuer = _Env.jwtIssuer;

  @EnviedField(varName: 'JWT_ACCESS_EXPIRES_IN_MINS')
  static final jwtAccessExpiresInMins = _Env.jwtAccessExpiresInMins;

  @EnviedField(varName: 'JWT_REFRESH_EXPIRES_IN_MINS')
  static final jwtRefreshExpiresInMins = _Env.jwtRefreshExpiresInMins;

  @EnviedField(varName: 'JWT_AUDIENCE')
  static final jwtAudience = _Env.jwtAudience;
}
