import 'package:shelf/shelf.dart';

import '../../../../utils/jwt_settings.dart';
import '../../../common/common.dart';
import '../persistence/token_repository.dart';
import '../services/jwt_token_service.dart';

// TODO: refactor all [Response]s
Middleware authorize({
  required JwtSettings jwtSettings,
  required JwtTokenService jwtTokenService,
  required EndUserRepository endUserRepository,
  required TokenRepository tokenRepository,
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

        final userID = await tokenRepository.getUserID(token: token);

        if (userID == null) {
          return Response(401);
        }

        final user = await endUserRepository.getByID(id: userID);

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
