import 'package:injectable/injectable.dart';

import 'env.dart';

const jwtSecretField = 'jwtSecret';
const jwtIssuerField = 'jwtIssuer';
const jwtExpiresInMinsField = 'jwtExpiresInMins';
const jwtAudienceField = 'jwtAudience';

@module
abstract class EnvModule {
  @Named(jwtSecretField)
  String get jwtSecret => Env.jwtSecret;

  @Named(jwtIssuerField)
  String get jwtIssuer => Env.jwtIssuer;

  @Named(jwtExpiresInMinsField)
  int get jwtExpiresInMins => int.parse(Env.jwtExpiresInMins);

  @Named(jwtAudienceField)
  String get jwtAudience => Env.jwtAudience;
}
