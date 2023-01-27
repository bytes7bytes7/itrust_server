import 'dart:convert';

import 'package:injectable/injectable.dart';
import 'package:shelf/shelf.dart';
import 'package:shelf_router/shelf_router.dart';

import '../../application/application.dart';
import '../contracts/contracts.dart';

part 'auth_controller.g.dart';

const authRoute = '/auth/';

@injectable
class AuthController {
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

    final authResult = _authService.register(
      firstName: registerRequest.firstName,
      lastName: registerRequest.lastName,
      email: registerRequest.email,
      password: registerRequest.password,
    );

    final response = AuthResponse(
      id: authResult.id,
      firstName: authResult.firstName,
      lastName: authResult.lastName,
      email: authResult.email,
      token: authResult.token,
    );

    return Response.ok(json.encode(response.toJson()));
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

    final authResult = _authService.login(
      email: loginRequest.email,
      password: loginRequest.password,
    );

    final response = AuthResponse(
      id: authResult.id,
      firstName: authResult.firstName,
      lastName: authResult.lastName,
      email: authResult.email,
      token: authResult.token,
    );

    return Response.ok(json.encode(response.toJson()));
  }
}
