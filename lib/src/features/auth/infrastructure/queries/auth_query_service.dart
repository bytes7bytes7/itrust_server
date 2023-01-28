import 'package:fpdart/fpdart.dart';
import 'package:injectable/injectable.dart';

import '../../../common/common.dart';
import '../../application/application.dart';
import '../../application/auth_result.dart';

@test
@Singleton(as: AuthQueryService)
class TestAuthQueryService implements AuthQueryService {
  const TestAuthQueryService({
    required JwtTokenGenerator jwtTokenGenerator,
    required EndUserRepository endUserRepository,
  })  : _jwtTokenGenerator = jwtTokenGenerator,
        _endUserRepository = endUserRepository;

  final JwtTokenGenerator _jwtTokenGenerator;
  final EndUserRepository _endUserRepository;

  @override
  Future<Either<DetailedException, AuthResult>> login({
    required String email,
    required String password,
  }) async {
    final user = await _endUserRepository.getUserByEmail(email: email);
    final userDoesNotExist = user == null;

    if (userDoesNotExist) {
      return left(const InvalidCredentials());
    }

    if (user.password != password) {
      return left(const InvalidCredentials());
    }

    final token = _jwtTokenGenerator.generate(user);

    return right(
      AuthResult(
        user: user,
        token: token,
      ),
    );
  }
}
