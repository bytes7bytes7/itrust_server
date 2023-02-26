import 'dart:convert';
import 'dart:io';

import 'package:injectable/injectable.dart';
import 'package:mapster/mapster.dart';
import 'package:mediator/mediator.dart' as mdtr;
import 'package:shelf/shelf.dart';
import 'package:shelf_router/shelf_router.dart';

import '../../../../utils/utils.dart';
import '../../../common/application/exceptions/exceptions.dart';
import '../../../common/common.dart';
import '../../application/application.dart';
import '../contracts/contracts.dart';

part 'auth_controller.g.dart';

const authRoute = '/auth';

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

  JsonEncoder get _jsonEncoder => const JsonEncoder();

  JsonDecoder get _jsonDecoder => const JsonDecoder();

  @Route.post('/register')
  Future<Response> register(Request request) async {
    late RegisterRequest registerRequest;
    try {
      final rawBody = await request.readAsString();
      final jsonBody = _jsonDecoder.convert(rawBody);
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
        _jsonEncoder.convert(_mapster.map1(r, To<AuthResponse>())),
        headers: {
          HttpHeaders.contentTypeHeader: ContentType.json.toString(),
        },
      ),
    );
  }

  @Route.post('/log_in')
  Future<Response> logIn(Request request) async {
    late LogInRequest logInRequest;
    try {
      final rawBody = await request.readAsString();
      final jsonBody = _jsonDecoder.convert(rawBody);
      logInRequest = LogInRequest.fromJson(jsonBody);
    } catch (e) {
      return problem(
        [const InvalidBodyException()],
      );
    }

    final query = _mapster.map1(logInRequest, To<LogInQuery>());

    final authResult = await query.sendTo(_mediator);

    return authResult.match(
      problem,
      (r) => Response.ok(
        _jsonEncoder.convert(_mapster.map1(r, To<AuthResponse>())),
        headers: {
          HttpHeaders.contentTypeHeader: ContentType.json.toString(),
        },
      ),
    );
  }

  @Route.post('/log_out')
  Future<Response> logOut(Request request) async {
    late LogOutRequest logOutRequest;
    try {
      final rawBody = await request.readAsString();
      final jsonBody = _jsonDecoder.convert(rawBody);
      logOutRequest = LogOutRequest.fromJson(jsonBody);
    } catch (e) {
      return problem(
        [const InvalidBodyException()],
      );
    }

    final token = request.token;

    if (token == null) {
      return problem(
        [const NoTokenProvided()],
      );
    }

    final command = _mapster.map2(logOutRequest, token, To<LogOutCommand>());

    final logOutResult = await command.sendTo(_mediator);

    return logOutResult.match(
      problem,
      (r) => Response.ok(
        _jsonEncoder.convert(_mapster.map1(r, To<LogOutResponse>())),
        headers: {
          HttpHeaders.contentTypeHeader: ContentType.json.toString(),
        },
      ),
    );
  }

  @Route.post('/verify_token')
  Future<Response> verifyToken(Request request) async {
    late VerifyTokenRequest verifyTokenRequest;
    try {
      final rawBody = await request.readAsString();
      final jsonBody = _jsonDecoder.convert(rawBody);
      verifyTokenRequest = VerifyTokenRequest.fromJson(jsonBody);
    } catch (e) {
      return problem(
        [const InvalidBodyException()],
      );
    }

    final accessToken = request.token;

    if (accessToken == null) {
      return problem(
        [const NoTokenProvided()],
      );
    }

    final query =
        _mapster.map2(verifyTokenRequest, accessToken, To<VerifyTokenQuery>());

    final verifyTokenResult = await query.sendTo(_mediator);

    return verifyTokenResult.match(
      problem,
      (r) => Response.ok(
        _jsonEncoder.convert(_mapster.map1(r, To<VerifyTokenResponse>())),
        headers: {
          HttpHeaders.contentTypeHeader: ContentType.json.toString(),
        },
      ),
    );
  }
}
