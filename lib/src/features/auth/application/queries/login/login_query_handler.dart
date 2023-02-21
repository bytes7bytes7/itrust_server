import 'dart:async';

import 'package:fpdart/fpdart.dart';
import 'package:injectable/injectable.dart';
import 'package:mediator/mediator.dart';

import '../../../../common/common.dart';
import '../../common/common.dart';
import '../../services/jwt_token_service.dart';
import 'login_query.dart';

@injectable
class LoginQueryHandler
    extends RequestHandler<Either<List<DetailedException>, AuthResult>, LoginQuery> {
  const LoginQueryHandler({
    required JwtTokenService jwtTokenService,
    required EndUserRepository endUserRepository,
  })  : _jwtTokenService = jwtTokenService,
        _endUserRepository = endUserRepository;

  final JwtTokenService _jwtTokenService;
  final EndUserRepository _endUserRepository;

  @override
  FutureOr<Either<List<DetailedException>, AuthResult>> handle(
    LoginQuery request,
  ) async {
    final user = await _endUserRepository.getUserByEmail(email: request.email);
    final userDoesNotExist = user == null;

    if (userDoesNotExist) {
      return left([const InvalidCredentials()]);
    }

    if (user.password != request.password) {
      return left([const InvalidCredentials()]);
    }

    final token = _jwtTokenService.generate(user);

    return right(
      AuthResult(
        user: user,
        token: token,
      ),
    );
  }
}
