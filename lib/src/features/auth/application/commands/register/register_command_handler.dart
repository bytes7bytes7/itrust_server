import 'package:fpdart/fpdart.dart';
import 'package:injectable/injectable.dart';
import 'package:mediator/mediator.dart';

import '../../../../common/common.dart';
import '../../common/common.dart';
import '../../persistence/token_repository.dart';
import '../../services/jwt_token_service.dart';
import 'register_command.dart';

@injectable
class RegisterCommandHandler extends RequestHandler<
    Either<List<DetailedException>, AuthResult>, RegisterCommand> {
  const RegisterCommandHandler({
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
  Future<Either<List<DetailedException>, AuthResult>> handle(
    RegisterCommand request,
  ) async {
    final userAlreadyExists =
        await _endUserRepository.getByEmail(email: request.email) != null;

    if (userAlreadyExists) {
      return left([const DuplicateEmail()]);
    }

    final userID = UserID.generate();
    final user = EndUser(
      id: userID,
      firstName: request.firstName,
      lastName: request.lastName,
      email: request.email,
      password: request.password,
    );

    await _endUserRepository.add(user: user);

    final token = _jwtTokenService.generate(user);

    await _tokenRepository.add(token: token, userID: userID);

    return right(
      AuthResult(
        user: user,
        token: token,
      ),
    );
  }
}
