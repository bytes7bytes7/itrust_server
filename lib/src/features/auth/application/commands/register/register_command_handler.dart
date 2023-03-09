import 'package:fpdart/fpdart.dart';
import 'package:injectable/injectable.dart';
import 'package:mediator/mediator.dart';

import '../../../../../repositories/interfaces/interfaces.dart';
import '../../../../common/application/exceptions/detailed_exception.dart';
import '../../../../common/common.dart';
import '../../common/common.dart';
import '../../exceptions/duplicate_email.dart';
import '../../services/hash_service.dart';
import '../../services/jwt_token_service.dart';
import 'register_command.dart';

@singleton
class RegisterCommandHandler extends RequestHandler<
    Either<List<DetailedException>, AuthResult>, RegisterCommand> {
  const RegisterCommandHandler({
    required JwtTokenService jwtTokenService,
    required HashService hashService,
    required EndUserRepository endUserRepository,
    required PasswordHashRepository passwordHashRepository,
    required TokenRepository tokenRepository,
  })  : _jwtTokenService = jwtTokenService,
        _hashService = hashService,
        _endUserRepository = endUserRepository,
        _passwordHashRepository = passwordHashRepository,
        _tokenRepository = tokenRepository;

  final JwtTokenService _jwtTokenService;
  final HashService _hashService;
  final EndUserRepository _endUserRepository;
  final PasswordHashRepository _passwordHashRepository;
  final TokenRepository _tokenRepository;

  @override
  Future<Either<List<DetailedException>, AuthResult>> handle(
    RegisterCommand request,
  ) async {
    final userAlreadyExists =
        await _endUserRepository.getByEmail(email: request.email) != null;

    if (userAlreadyExists) {
      return left([const DuplicateEmail()]);
    }

    late UserID userID;
    do {
      userID = UserID.generateEnd();
    } while ((await _endUserRepository.getByID(id: userID)) != null);

    final passwordHash = _hashService.hashPassword(request.password);

    final user = EndUser(
      id: userID,
      firstName: request.firstName,
      lastName: request.lastName,
      email: request.email,
      avatarUrls: [],
    );

    await _endUserRepository.addOrUpdate(user: user);
    await _passwordHashRepository.saveHashByID(
      userID: userID,
      passwordHash: passwordHash,
    );

    final tokenPair = _jwtTokenService.generate(user);

    await _tokenRepository.addOrUpdate(
      tokenPair: tokenPair,
      userID: userID,
      deviceInfo: request.deviceInfo,
    );

    return right(
      AuthResult(
        user: user,
        accessToken: tokenPair.access,
        refreshToken: tokenPair.refresh,
      ),
    );
  }
}
