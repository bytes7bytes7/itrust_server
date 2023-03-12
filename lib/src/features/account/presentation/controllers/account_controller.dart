import 'package:injectable/injectable.dart';
import 'package:mapster/mapster.dart';
import 'package:mediator/mediator.dart' as mdtr;
import 'package:shelf/shelf.dart';
import 'package:shelf_router/shelf_router.dart';

import '../../../../utils/extensions/extensions.dart';
import '../../../common/common.dart';
import '../../application/application.dart';
import '../contracts/contracts.dart';

part 'account_controller.g.dart';

@injectable
class AccountController extends ApiController {
  static const path = '/account/';

  const AccountController({
    required mdtr.Mediator mediator,
    required Mapster mapster,
  })  : _mediator = mediator,
        _mapster = mapster;

  final mdtr.Mediator _mediator;
  final Mapster _mapster;

  Router get router => _$AccountControllerRouter(this);

  @Route.post('/personal_info')
  Future<Response> changePersonalInfo(Request request) async {
    late final ChangePersonalInfoRequest changePersonalInfoRequest;
    try {
      changePersonalInfoRequest =
          await parseRequest<ChangePersonalInfoRequest>(request);
    } catch (e) {
      return problem(
        [const InvalidBodyException()],
      );
    }

    final user = request.user;

    if (user == null) {
      return problem([const UserDoesNotExist()]);
    }

    final command = _mapster.map2(
      changePersonalInfoRequest,
      user.id,
      To<ChangePersonalInfoCommand>(),
    );

    final result = await command.sendTo(_mediator);

    return result.match(
      problem,
      (r) => ok(_mapster.map1(r, To<ChangePersonalInfoResponse>())),
    );
  }

  @Route.get('/devices')
  Future<Response> getDevices(Request request) async {
    late final GetDevicesRequest getDevicesRequest;
    try {
      getDevicesRequest = await parseRequest<GetDevicesRequest>(request);
    } catch (e) {
      return problem(
        [const InvalidBodyException()],
      );
    }

    final user = request.user;

    if (user == null) {
      return problem([const UserDoesNotExist()]);
    }

    final accessToken = request.token;

    if (accessToken == null) {
      return problem([const UserDoesNotExist()]);
    }

    final query = _mapster.map3(
      getDevicesRequest,
      user.id,
      accessToken,
      To<GetDevicesQuery>(),
    );

    final result = await query.sendTo(_mediator);

    return result.match(
      problem,
      (r) => ok(_mapster.map1(r, To<GetDevicesResponse>())),
    );
  }

  @Route.post('/remove_device')
  Future<Response> removeDevice(Request request) async {
    late final RemoveDeviceRequest removeDeviceRequest;
    try {
      removeDeviceRequest = await parseRequest<RemoveDeviceRequest>(request);
    } catch (e) {
      return problem(
        [const InvalidBodyException()],
      );
    }

    final user = request.user;

    if (user == null) {
      return problem([const UserDoesNotExist()]);
    }

    final command = _mapster.map2(
      removeDeviceRequest,
      user.id,
      To<RemoveDeviceCommand>(),
    );

    final result = await command.sendTo(_mediator);

    return result.match(
      problem,
      (r) => ok(_mapster.map1(r, To<RemoveDeviceResponse>())),
    );
  }
}
