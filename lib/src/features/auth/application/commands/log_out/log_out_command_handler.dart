import 'dart:async';

import 'package:fpdart/fpdart.dart';
import 'package:injectable/injectable.dart';
import 'package:mediator/mediator.dart';

import '../../../../common/common.dart';
import '../../../domain/domain.dart';
import '../../common/common.dart';
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
    final token = await _tokenRepository.getToken(userID: request.endUser.id);

    if (token == null) {
      return left([const TokenExpired()]);
    }

    final validationStatus = _jwtTokenService.verify(token);

    if (validationStatus != JwtVerificationStatus.verified) {
      return left([const TokenExpired()]);
    }

    return right(LogOutResult(info: 'Log out succeeded'));
  }
}