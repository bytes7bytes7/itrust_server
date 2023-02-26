import 'dart:async';

import 'package:fpdart/fpdart.dart';
import 'package:injectable/injectable.dart';
import 'package:mediator/mediator.dart';

import '../../../../common/application/exceptions/exceptions.dart';
import '../../common/common.dart';
import '../../exceptions/exceptions.dart';
import '../../repositories/token_repository.dart';
import '../../services/jwt_token_service.dart';
import 'log_out_command.dart';

@singleton
class LogOutCommandHandler extends RequestHandler<
    Either<List<DetailedException>, LogOutResult>, LogOutCommand> {
  const LogOutCommandHandler({
    required JwtTokenService jwtTokenService,
    required TokenRepository tokenRepository,
  })  : _jwtTokenService = jwtTokenService,
        _tokenRepository = tokenRepository;

  final JwtTokenService _jwtTokenService;
  final TokenRepository _tokenRepository;

  @override
  FutureOr<Either<List<DetailedException>, LogOutResult>> handle(
    LogOutCommand request,
  ) async {
    final tokenPair =
        await _tokenRepository.getTokenPair(userID: request.user.id);

    if (tokenPair == null) {
      return left([const TokenExpired()]);
    }

    final validationStatus = _jwtTokenService.verify(tokenPair.access);

    if (validationStatus != JwtVerificationStatus.verified) {
      return left([const TokenExpired()]);
    }

    await _tokenRepository.removeByUserID(userID: request.user.id);

    return right(LogOutResult(info: 'Log out succeeded'));
  }
}
