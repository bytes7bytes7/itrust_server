import 'dart:async';

import 'package:fpdart/fpdart.dart';
import 'package:injectable/injectable.dart';
import 'package:mediator/mediator.dart';

import '../../../../../repositories/interfaces/interfaces.dart';
import '../../../../common/application/application.dart';
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

    return right(
      RemoveDeviceResult(
        info: 'Successfully removed.',
      ),
    );
  }
}
