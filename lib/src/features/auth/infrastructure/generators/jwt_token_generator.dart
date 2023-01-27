import 'package:dart_jsonwebtoken/dart_jsonwebtoken.dart';
import 'package:injectable/injectable.dart';
import 'package:uuid/uuid.dart';

import '../../../../env/env_module.dart';
import '../../application/application.dart';

@Singleton(as: JwtTokenGenerator)
class ProdJwtTokenGenerator implements JwtTokenGenerator {
  const ProdJwtTokenGenerator({
    @Named(jwtSecretField) required this.secret,
    @Named(jwtIssuerField) required this.issuer,
    @Named(jwtExpiresInMinsField) required this.expiresIn,
    @Named(jwtAudienceField) required this.audience,
  });

  final String secret;
  final String issuer;
  final int expiresIn;
  final String audience;

  @override
  String generate(String userID, String firstName, String lastName) {
    final jwt = JWT(
      {
        'firstName': firstName,
        'lastName': lastName,
      },
      subject: userID,
      jwtId: Uuid().v4(),
      issuer: issuer,
      audience: Audience.one(audience),
    );

    return jwt.sign(
      SecretKey(secret),
      expiresIn: Duration(minutes: expiresIn),
    );
  }
}
