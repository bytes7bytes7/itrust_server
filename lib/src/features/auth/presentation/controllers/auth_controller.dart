import 'dart:convert';
import 'dart:io';

import 'package:injectable/injectable.dart';
import 'package:shelf/shelf.dart';
import 'package:shelf_router/shelf_router.dart';

import '../../../common/common.dart';
import '../../application/application.dart';
import '../contracts/contracts.dart';

part 'auth_controller.g.dart';

const authRoute = '/auth/';

@injectable
class AuthController extends ApiController {
  const AuthController({
    required AuthService authService,
  }) : _authService = authService;

  final AuthService _authService;

  Router get router => _$AuthControllerRouter(this);

  @Route.post('/register')
  Future<Response> register(Request request) async {
    late RegisterRequest registerRequest;
    try {
      final rawBody = await request.readAsString();
      final jsonBody = json.decode(rawBody);
      registerRequest = RegisterRequest.fromJson(jsonBody);
    } catch (e) {
      return Response.badRequest();
    }

    final authResult = await _authService.register(
      firstName: registerRequest.firstName,
      lastName: registerRequest.lastName,
      email: registerRequest.email,
      password: registerRequest.password,
    );

    return authResult.match(
      problem,
      (r) => Response.ok(
        json.encode(
          AuthResponse(
            id: r.user.id,
            firstName: r.user.firstName,
            lastName: r.user.lastName,
            email: r.user.email,
            token: r.token,
          ),
        ),
        headers: {
          HttpHeaders.contentTypeHeader: ContentType.json.toString(),
        },
      ),
    );
  }

  @Route.post('/login')
  Future<Response> login(Request request) async {
    late LoginRequest loginRequest;
    try {
      final rawBody = await request.readAsString();
      final jsonBody = json.decode(rawBody);
      loginRequest = LoginRequest.fromJson(jsonBody);
    } catch (e) {
      return Response.badRequest();
    }

    final authResult = await _authService.login(
      email: loginRequest.email,
      password: loginRequest.password,
    );

    return authResult.match(
      problem,
      (r) => Response.ok(
        json.encode(
          AuthResponse(
            id: r.user.id,
            firstName: r.user.firstName,
            lastName: r.user.lastName,
            email: r.user.email,
            token: r.token,
          ).toJson(),
        ),
        headers: {
          HttpHeaders.contentTypeHeader: ContentType.json.toString(),
        },
      ),
    );
  }
}
