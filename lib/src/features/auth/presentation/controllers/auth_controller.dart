import 'dart:convert';
import 'dart:io';

import 'package:fpdart/fpdart.dart';
import 'package:injectable/injectable.dart';
import 'package:mapster/mapster.dart';
import 'package:mediatr/mediatr.dart';
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
    required Mediator mediator,
    required Mapster mapster,
  })  : _mediator = mediator,
        _mapster = mapster;

  final Mediator _mediator;
  final Mapster _mapster;

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

    final command = _mapster.map(registerRequest, To<RegisterCommand>());

    final authResult =
        await _mediator.send(command) as Either<DetailedException, AuthResult>;

    return authResult.match(
      problem,
      (r) {
        final resp = _mapster.map(r, To<AuthResponse>());

        return Response.ok(
          json.encode(resp),
          headers: {
            HttpHeaders.contentTypeHeader: ContentType.json.toString(),
          },
        );
      },
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

    final query = _mapster.map(loginRequest, To<LoginQuery>());

    final authResult =
        await _mediator.send(query) as Either<DetailedException, AuthResult>;

    return authResult.match(
      problem,
      (r) => Response.ok(
        json.encode(
          _mapster.map(r, To<AuthResponse>()).toJson(),
        ),
        headers: {
          HttpHeaders.contentTypeHeader: ContentType.json.toString(),
        },
      ),
    );
  }
}
