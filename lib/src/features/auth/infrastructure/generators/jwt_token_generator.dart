import 'package:dart_jsonwebtoken/dart_jsonwebtoken.dart';
import 'package:injectable/injectable.dart';
import 'package:uuid/uuid.dart';

import '../../application/application.dart';

@Singleton(as: JwtTokenGenerator)
class ProdJwtTokenGenerator implements JwtTokenGenerator {
  const ProdJwtTokenGenerator({
    required this.secret,
    required this.issuer,
  });

  final String secret;
  final String issuer;

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
    );

    return jwt.sign(
      SecretKey(secret),
      expiresIn: Duration(days: 1),
    );
  }
}
