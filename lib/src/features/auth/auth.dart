import 'dart:convert';

import 'package:collection/collection.dart';
import 'package:logging/logging.dart';
import 'package:shelf/shelf.dart';
import 'package:shelf_router/shelf_router.dart';

final _logger = Logger('$AuthAPI');

class User {
  const User({
    required this.email,
    required this.password,
  });

  final String email;
  final String password;
}

class AuthAPI {
  final _storage = <User>[];

  Router get router {
    return Router()
      ..post('/', (Request req) async {
        final payload = await req.readAsString();

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

        final userFromDB = _storage.firstWhereOrNull((e) => e.email == email);

        if (userFromDB != null) {
          if (password == userFromDB.password) {
            return Response.ok('Logged in');
          }

          return Response.forbidden('Wrong password');
        }

        final newUser = User(
          email: email,
          password: password,
        );

        _storage.add(newUser);

        return Response.ok('Registered');
      });
  }
}
