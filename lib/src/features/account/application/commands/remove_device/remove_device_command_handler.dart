import 'dart:async';

import 'package:fpdart/fpdart.dart';
import 'package:injectable/injectable.dart';
import 'package:mediator/mediator.dart';

import '../../../../../repositories/interfaces/interfaces.dart';
import '../../../../common/application/application.dart';
import '../../../domain/domain.dart';
import '../../common/common.dart';
import '../../exceptions/exceptions.dart';
import 'remove_device.dart';

@singleton
class RemoveDeviceCommandHandler extends RequestHandler<
    Either<List<DetailedException>, RemoveDeviceResult>, RemoveDeviceCommand> {
  const RemoveDeviceCommandHandler({
    required TokenRepository tokenRepository,
    required PasswordHashRepository passwordHashRepository,
    required EndUserRepository endUserRepository,
    required HashService hashService,
  })  : _tokenRepository = tokenRepository,
        _passwordHashRepository = passwordHashRepository,
        _endUserRepository = endUserRepository,
        _hashService = hashService;

  final TokenRepository _tokenRepository;
  final PasswordHashRepository _passwordHashRepository;
  final EndUserRepository _endUserRepository;
  final HashService _hashService;

  @override
  FutureOr<Either<List<DetailedException>, RemoveDeviceResult>> handle(
    RemoveDeviceCommand request,
  ) async {
    final user = await _endUserRepository.getByID(id: request.userID);

    if (user == null) {
      return left([const UserDoesNotExist()]);
    }

    final rightPasswordHash =
        await _passwordHashRepository.getHashByID(userID: user.id);
    final currentPasswordHash = _hashService.hashPassword(request.password);

    if (currentPasswordHash != rightPasswordHash) {
      return left([const WrongPassword()]);
    }

    await _tokenRepository.removeNoteByUserIDSessionID(
      userID: request.userID,
      sessionID: request.sessionID,
    );

    final infoList = await _tokenRepository.getFullSessionInfoListByUserID(
      userID: request.userID,
    );

    DeviceSession? thisSession;
    final otherSessions = <DeviceSession>[];
    for (final info in infoList) {
      final session = DeviceSession(
        id: info.id,
        deviceName: '${info.deviceInfo.name}, ${info.deviceInfo.platform}',
        ip: info.ip,
        createdAt: info.createdAt,
      );

      if (info.tokenPair.access == request.accessToken) {
        thisSession = session;
      } else {
        otherSessions.add(session);
      }
    }

    if (thisSession == null) {
      return left([const CurrentSessionNotFound()]);
    }

    return right(
      RemoveDeviceResult(
        thisSession: thisSession,
        otherSessions: otherSessions,
      ),
    );
  }
}
