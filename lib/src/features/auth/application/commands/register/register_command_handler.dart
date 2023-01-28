import 'package:fpdart/fpdart.dart';
import 'package:injectable/injectable.dart';
import 'package:mediatr/mediatr.dart';

import '../../../../common/common.dart';
import '../../common/common.dart';
import '../../generators/generators.dart';
import 'register_command.dart';

@injectable
class RegisterCommandHandler extends IRequestHandler<
    Either<DetailedException, AuthResult>, RegisterCommand> {
  const RegisterCommandHandler({
    required JwtTokenGenerator jwtTokenGenerator,
    required EndUserRepository endUserRepository,
  })  : _jwtTokenGenerator = jwtTokenGenerator,
        _endUserRepository = endUserRepository;

  final JwtTokenGenerator _jwtTokenGenerator;
  final EndUserRepository _endUserRepository;

  @override
  Future<Either<DetailedException, AuthResult>> call(
    RegisterCommand request,
  ) async {
    final userAlreadyExists =
        await _endUserRepository.getUserByEmail(email: request.email) != null;

    if (userAlreadyExists) {
      return left(const DuplicateEmail());
    }

    final user = EndUser(
      id: UserID.generate(),
      firstName: request.firstName,
      lastName: request.lastName,
      email: request.email,
      password: request.password,
    );

    await _endUserRepository.add(user: user);

    final token = _jwtTokenGenerator.generate(user);

    return right(
      AuthResult(
        user: user,
        token: token,
      ),
    );
  }
}
