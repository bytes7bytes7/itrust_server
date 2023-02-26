import 'dart:async';

import 'package:fpdart/fpdart.dart';
import 'package:injectable/injectable.dart';
import 'package:mediator/mediator.dart';

import '../../../../common/application/exceptions/detailed_exception.dart';
import '../../common/common.dart';
import '../../exceptions/exceptions.dart';
import '../../repositories/token_repository.dart';
import '../../services/jwt_token_service.dart';
import 'verify_token.dart';

@singleton
class VerifyTokenQueryHandler extends RequestHandler<
    Either<List<DetailedException>, VerifyTokenResult>, VerifyTokenQuery> {
  const VerifyTokenQueryHandler({
    required JwtTokenService jwtTokenService,
    required TokenRepository tokenRepository,
  })  : _jwtTokenService = jwtTokenService,
        _tokenRepository = tokenRepository;

  final JwtTokenService _jwtTokenService;
  final TokenRepository _tokenRepository;

  @override
  FutureOr<Either<List<DetailedException>, VerifyTokenResult>> handle(
    VerifyTokenQuery request,
  ) async {
    final userID =
        await _tokenRepository.getUserID(accessToken: request.accessToken);

    if (userID == null) {
      return left([const TokenExpired()]);
    }

    final validationStatus = _jwtTokenService.verify(request.accessToken);

    if (validationStatus != JwtVerificationStatus.verified) {
      await _tokenRepository.removeByToken(accessToken: request.accessToken);

      return left([const TokenExpired()]);
    }

    return right(VerifyTokenResult(info: 'Token is valid'));
  }
}
