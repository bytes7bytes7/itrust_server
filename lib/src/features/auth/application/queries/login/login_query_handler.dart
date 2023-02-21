import 'dart:async';

import 'package:fpdart/fpdart.dart';
import 'package:injectable/injectable.dart';
import 'package:mediator/mediator.dart';

import '../../../../common/common.dart';
import '../../common/common.dart';
import '../../generators/generators.dart';
import 'login_query.dart';

@injectable
class LoginQueryHandler
    extends RequestHandler<Either<DetailedException, AuthResult>, LoginQuery> {
  const LoginQueryHandler({
    required JwtTokenGenerator jwtTokenGenerator,
    required EndUserRepository endUserRepository,
  })  : _jwtTokenGenerator = jwtTokenGenerator,
        _endUserRepository = endUserRepository;

  final JwtTokenGenerator _jwtTokenGenerator;
  final EndUserRepository _endUserRepository;

  @override
  FutureOr<Either<DetailedException, AuthResult>> handle(
    LoginQuery request,
  ) async {
    final user = await _endUserRepository.getUserByEmail(email: request.email);
    final userDoesNotExist = user == null;

    if (userDoesNotExist) {
      return left(const InvalidCredentials());
    }

    if (user.password != request.password) {
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
