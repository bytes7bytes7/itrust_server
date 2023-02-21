import 'package:fpdart/fpdart.dart';
import 'package:injectable/injectable.dart';
import 'package:mediator/mediator.dart';

import '../../../../common/common.dart';
import '../../common/common.dart';
import '../../services/jwt_token_service.dart';
import 'register_command.dart';

@injectable
class RegisterCommandHandler extends RequestHandler<
    Either<List<DetailedException>, AuthResult>, RegisterCommand> {
  const RegisterCommandHandler({
    required JwtTokenService jwtTokenService,
    required EndUserRepository endUserRepository,
  })  : _jwtTokenService = jwtTokenService,
        _endUserRepository = endUserRepository;

  final JwtTokenService _jwtTokenService;
  final EndUserRepository _endUserRepository;

  @override
  Future<Either<List<DetailedException>, AuthResult>> handle(
    RegisterCommand request,
  ) async {
    final userAlreadyExists =
        await _endUserRepository.getUserByEmail(email: request.email) != null;

    if (userAlreadyExists) {
      return left([const DuplicateEmail()]);
    }

    final user = EndUser(
      id: UserID.generate(),
      firstName: request.firstName,
      lastName: request.lastName,
      email: request.email,
      password: request.password,
    );

    await _endUserRepository.add(user: user);

    final token = _jwtTokenService.generate(user);

    return right(
      AuthResult(
        user: user,
        token: token,
      ),
    );
  }
}
