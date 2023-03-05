import 'package:injectable/injectable.dart';
import 'package:mapster/mapster.dart';
import 'package:mediator/mediator.dart' as mdtr;
import 'package:shelf/shelf.dart';
import 'package:shelf_router/shelf_router.dart';

import '../../../common/application/exceptions/exceptions.dart';
import '../../../common/common.dart';
import '../../application/application.dart';
import '../contracts/contracts.dart';

part 'user_controller.g.dart';

const _userIDParam = 'userID';

@injectable
class UserController extends ApiController {
  static const path = '/users/';

  const UserController({
    required mdtr.Mediator mediator,
    required Mapster mapster,
  })  : _mediator = mediator,
        _mapster = mapster;

  final mdtr.Mediator _mediator;
  final Mapster _mapster;

  Router get router => _$UserControllerRouter(this);

  @Route.get('/<$_userIDParam>')
  Future<Response> getUser(Request request) async {
    late GetUserRequest getUserRequest;
    try {
      getUserRequest = await parseRequest<GetUserRequest>(request);
    } catch (e) {
      return problem(
        [const InvalidBodyException()],
      );
    }

    final userID = request.params[_userIDParam];

    if (userID == null) {
      return problem([const InvalidRequest()]);
    }

    final query = _mapster.map2(getUserRequest, userID, To<GetUserQuery>());

    final getUserResult = await query.sendTo(_mediator);

    return getUserResult.match(
      problem,
      (r) => ok(_mapster.map1(r, To<GetUserResponse>())),
    );
  }
}
