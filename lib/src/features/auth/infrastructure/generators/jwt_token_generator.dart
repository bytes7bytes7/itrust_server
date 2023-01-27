import 'package:dart_jsonwebtoken/dart_jsonwebtoken.dart';
import 'package:injectable/injectable.dart';
import 'package:uuid/uuid.dart';

import '../../application/application.dart';

// TODO: move to save place
final _key = SecretKey('signingSecretKey');

@Singleton(as: JwtTokenGenerator)
class ProdJwtTokenGenerator implements JwtTokenGenerator {
  @override
  String generate(String userID, String firstName, String lastName) {
    final jwt = JWT(
      {
        'firstName': firstName,
        'lastName': lastName,
      },
      subject: userID,
      jwtId: Uuid().v4(),
      issuer: 'ITrust Social Network',
    );

    return jwt.sign(
      _key,
      expiresIn: Duration(days: 1),
    );
  }
}
