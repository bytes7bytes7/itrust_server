import 'package:shelf/shelf.dart';

import '../../../../utils/jwt_settings.dart';
import '../../../common/common.dart';
import '../services/jwt_token_service.dart';

Middleware authorize({
  required JwtSettings jwtSettings,
  required JwtTokenService jwtTokenService,
}) =>
    (innerHandler) {
      return (request) async {
        final authorizationHeader = request.headers['Authorization'] ??
            request.headers['authorization'];

        if (authorizationHeader == null) {
          return Response(401);
        }

        if (!authorizationHeader.startsWith('Bearer ')) {
          return Response(401);
        }

        final token = authorizationHeader.replaceFirst('Bearer', '').trim();

        if (token.isEmpty) {
          return Response(401);
        }

        final validationStatus = jwtTokenService.verify(token);

        if (validationStatus != JwtVerificationStatus.verified) {
          return Response(401);
        }

        // TODO: find user in storage
        final user = EndUser(
          id: UserID('1'),
          firstName: 'firstName',
          lastName: 'lastName',
          password: 'password',
          email: 'email',
        );

        // ignore: unnecessary_null_comparison
        if (user == null) {
          return Response(401);
        }

        // change context
        request = request.change(context: {'user': user});

        return Future.sync(() => innerHandler(request)).then((response) {
          return response;
        });
      };
    };
