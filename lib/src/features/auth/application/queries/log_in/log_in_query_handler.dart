import 'dart:async';

import 'package:fpdart/fpdart.dart';
import 'package:injectable/injectable.dart';
import 'package:mediator/mediator.dart';

import '../../../../common/application/exceptions/detailed_exception.dart';
import '../../../../common/common.dart';
import '../../common/common.dart';
import '../../exceptions/exceptions.dart';
import '../../repositories/token_repository.dart';
import '../../services/jwt_token_service.dart';
import 'log_in_query.dart';

@singleton
class LogInQueryHandler extends RequestHandler<
    Either<List<DetailedException>, AuthResult>, LogInQuery> {
  const LogInQueryHandler({
    required JwtTokenService jwtTokenService,
    required EndUserRepository endUserRepository,
    required TokenRepository tokenRepository,
  })  : _jwtTokenService = jwtTokenService,
        _endUserRepository = endUserRepository,
        _tokenRepository = tokenRepository;

  final JwtTokenService _jwtTokenService;
  final EndUserRepository _endUserRepository;
  final TokenRepository _tokenRepository;

  @override
  FutureOr<Either<List<DetailedException>, AuthResult>> handle(
    LogInQuery request,
  ) async {
    final user = await _endUserRepository.getByEmail(email: request.email);
    final userDoesNotExist = user == null;

    if (userDoesNotExist) {
      return left([const InvalidCredentials()]);
    }

    if (user.password != request.password) {
      return left([const InvalidCredentials()]);
    }

    var tokenPair = await _tokenRepository.getTokenPair(userID: user.id);

    if (tokenPair == null) {
      tokenPair = _jwtTokenService.generate(user);

      await _tokenRepository.add(tokenPair: tokenPair, userID: user.id);
    }

    return right(
      AuthResult(
        user: user,
        accessToken: tokenPair.access,
        refreshToken: tokenPair.refresh,
      ),
    );
  }
}
