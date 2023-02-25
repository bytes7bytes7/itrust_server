import 'dart:convert';
import 'dart:io';

import 'package:injectable/injectable.dart';
import 'package:mapster/mapster.dart';
import 'package:mediator/mediator.dart' as mdtr;
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
    required mdtr.Mediator mediator,
    required Mapster mapster,
  })  : _mediator = mediator,
        _mapster = mapster;

  final mdtr.Mediator _mediator;
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
      return problem(
        [const InvalidBodyException()],
      );
    }

    final command = _mapster.map1(registerRequest, To<RegisterCommand>());

    final authResult = await command.sendTo(_mediator);

    return authResult.match(
      problem,
      (r) => Response.ok(
        json.encode(_mapster.map1(r, To<AuthResponse>())),
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
      return problem(
        [const InvalidBodyException()],
      );
    }

    final query = _mapster.map1(loginRequest, To<LoginQuery>());

    final authResult = await query.sendTo(_mediator);

    return authResult.match(
      problem,
      (r) => Response.ok(
        json.encode(_mapster.map1(r, To<AuthResponse>())),
        headers: {
          HttpHeaders.contentTypeHeader: ContentType.json.toString(),
        },
      ),
    );
  }
}
