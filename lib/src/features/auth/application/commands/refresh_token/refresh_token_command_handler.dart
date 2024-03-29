import 'dart:async';

import 'package:fpdart/fpdart.dart';
import 'package:injectable/injectable.dart';
import 'package:mediator/mediator.dart';

import '../../../../../repositories/interfaces/interfaces.dart';
import '../../../../common/application/exceptions/exceptions.dart';
import '../../../../common/application/providers/date_time_provider.dart';
import '../../common/common.dart';
import '../../exceptions/exceptions.dart';
import '../../services/jwt_token_service.dart';
import 'refresh_token_command.dart';

@singleton
class RefreshTokenCommandHandler extends RequestHandler<RefreshTokenCommand,
    Either<List<DetailedException>, RefreshTokenResult>> {
  const RefreshTokenCommandHandler({
    required JwtTokenService jwtTokenService,
    required TokenRepository tokenRepository,
    required EndUserRepository endUserRepository,
    required DateTimeProvider dateTimeProvider,
  })  : _jwtTokenService = jwtTokenService,
        _tokenRepository = tokenRepository,
        _endUserRepository = endUserRepository,
        _dateTimeProvider = dateTimeProvider;

  final JwtTokenService _jwtTokenService;
  final TokenRepository _tokenRepository;
  final EndUserRepository _endUserRepository;
  final DateTimeProvider _dateTimeProvider;

  @override
  FutureOr<Either<List<DetailedException>, RefreshTokenResult>> handle(
    RefreshTokenCommand request,
  ) async {
    final userID = await _tokenRepository.getUserIDByRefreshToken(
      refreshToken: request.refreshToken,
    );

    if (userID == null) {
      return left([const TokenExpired()]);
    }

    final validationStatus = _jwtTokenService.verify(request.refreshToken);

    if (validationStatus != JwtVerificationStatus.verified) {
      return left([const TokenExpired()]);
    }

    final deviceInfo = await _tokenRepository.getDeviceInfoByRefreshToken(
      refreshToken: request.refreshToken,
    );

    if (deviceInfo != request.deviceInfo) {
      await _tokenRepository.removeNoteByRefreshToken(
        refreshToken: request.refreshToken,
      );

      return left([const StolenToken()]);
    }

    final user = await _endUserRepository.getByID(id: userID);

    if (user == null) {
      return left([const UserNotFound()]);
    }

    await _tokenRepository.removeNoteByRefreshToken(
      refreshToken: request.refreshToken,
    );

    final tokenPair = _jwtTokenService.generate(user);

    await _tokenRepository.addOrUpdate(
      tokenPair: tokenPair,
      userID: userID,
      deviceInfo: request.deviceInfo,
      ip: request.ip,
      createdAt: _dateTimeProvider.nowUtc(),
    );

    return right(
      RefreshTokenResult(
        accessToken: tokenPair.access,
        refreshToken: tokenPair.refresh,
      ),
    );
  }
}
