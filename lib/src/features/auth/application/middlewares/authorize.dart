import 'package:shelf/shelf.dart';

import '../../../../utils/utils.dart';
import '../../../common/common.dart';
import '../exceptions/exceptions.dart';
import '../repositories/token_repository.dart';
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
          return problemHandler([const NoTokenProvided()]);
        }

        if (!authorizationHeader.startsWith('Bearer ')) {
          return problemHandler([const InvalidToken()]);
        }

        final token = authorizationHeader.replaceFirst('Bearer', '').trim();

        if (token.isEmpty) {
          return problemHandler([const InvalidToken()]);
        }

        final validationStatus = jwtTokenService.verify(token);

        if (validationStatus != JwtVerificationStatus.verified) {
          return problemHandler([const TokenExpired()]);
        }

        final userID = await tokenRepository.getUserID(token: token);

        if (userID == null) {
          return problemHandler([const UserDoesNotExist()]);
        }

        final user = await endUserRepository.getByID(id: userID);

        if (user == null) {
          return problemHandler([const UserDoesNotExist()]);
        }

        // change context
        request = request.setUser(user);

        return Future.sync(() => innerHandler(request)).then((response) {
          return response;
        });
      };
    };
