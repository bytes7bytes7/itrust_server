import 'package:fpdart/fpdart.dart';
import 'package:injectable/injectable.dart';

import '../../../common/common.dart';
import '../../application/application.dart';
import '../../application/auth_result.dart';

@test
@Singleton(as: AuthCommandService)
class TestAuthCommandService implements AuthCommandService {
  const TestAuthCommandService({
    required JwtTokenGenerator jwtTokenGenerator,
    required EndUserRepository endUserRepository,
  })  : _jwtTokenGenerator = jwtTokenGenerator,
        _endUserRepository = endUserRepository;

  final JwtTokenGenerator _jwtTokenGenerator;
  final EndUserRepository _endUserRepository;

  @override
  Future<Either<DetailedException, AuthResult>> register({
    required String firstName,
    required String lastName,
    required String email,
    required String password,
  }) async {
    final userAlreadyExists =
        await _endUserRepository.getUserByEmail(email: email) != null;

    if (userAlreadyExists) {
      return left(const DuplicateEmail());
    }

    final user = EndUser(
      id: UserID.generate(),
      firstName: firstName,
      lastName: lastName,
      email: email,
      password: password,
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
