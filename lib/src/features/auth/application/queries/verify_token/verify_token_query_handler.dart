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
    final token = await _tokenRepository.getToken(userID: request.user.id);

    if (token == null) {
      return left([const TokenExpired()]);
    }

    final validationStatus = _jwtTokenService.verify(token);

    if (validationStatus != JwtVerificationStatus.verified) {
      await _tokenRepository.removeByUserID(userID: request.user.id);

      return left([const TokenExpired()]);
    }

    return right(VerifyTokenResult(info: 'Token is valid'));
  }
}
