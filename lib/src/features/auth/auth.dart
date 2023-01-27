import 'dart:convert';

import 'package:logging/logging.dart';
import 'package:shelf/shelf.dart';
import 'package:shelf_router/shelf_router.dart';

import '../common/common.dart';

part 'auth.g.dart';

final _logger = Logger('$AuthService');

class AuthService {
  const AuthService({
    required EndUserRepository endUserRepository,
  }) : _endUserRepository = endUserRepository;

  final EndUserRepository _endUserRepository;

  Router get router => _$AuthServiceRouter(this);

  @Route.post('/')
  Future<Response> auth(Request request) async {
    final payload = await request.readAsString();

    final userInfo = <String, Object?>{};
    try {
      userInfo.addAll(json.decode(payload) as Map<String, Object?>);
    } catch (e) {
      _logger.warning(e);

      return Response.badRequest(
        body: 'Provide your email and password in JSON format',
      );
    }

    final email = userInfo['email'];
    final password = userInfo['password'];

    if (email == null ||
        email is! String ||
        email.isEmpty ||
        password == null ||
        password is! String ||
        password.isEmpty) {
      return Response.badRequest(
        body: 'Provide your email and password',
      );
    }

    final userFromDB = await _endUserRepository.findByEmail(email: email);

    if (userFromDB != null) {
      if (password == userFromDB.password) {
        return Response.ok(json.encode(userFromDB.toJson()));
      }

      return Response.forbidden('Wrong password');
    }

    final newUser = EndUser(
      // empty due to creation
      id: UserID(''),
      email: email,
      password: password,
    );

    final createdUser = await _endUserRepository.create(user: newUser);

    return Response.ok(json.encode(createdUser.toJson()));
  }
}
