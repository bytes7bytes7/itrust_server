import 'package:injectable/injectable.dart';
import 'package:mapster/mapster.dart';
import 'package:mediator/mediator.dart' as mdtr;
import 'package:shelf/shelf.dart';
import 'package:shelf_router/shelf_router.dart';

import '../../../common/common.dart';
import '../../application/application.dart';
import '../contracts/contracts.dart';

part 'user_controller.g.dart';

const _userIDParam = 'userID';
const _userNickParam = 'userNick';

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

  @Route.get('/id<$_userIDParam>')
  Future<Response> getUserByID(Request request) async {
    late final GetUserByIDRequest getUserByIDRequest;
    try {
      getUserByIDRequest = await parseRequest<GetUserByIDRequest>(request);
    } catch (e) {
      return problem(
        [const InvalidBodyException()],
      );
    }

    final userID = request.params[_userIDParam];

    if (userID == null) {
      return problem([const InvalidRequest()]);
    }

    final query =
        _mapster.map2(getUserByIDRequest, userID, To<GetUserByIDQuery>());

    final result = await query.sendTo(_mediator);

    return result.match(
      problem,
      (r) => ok(_mapster.map1(r, To<GetUserByIDResponse>())),
    );
  }

  @Route.get('/<$_userNickParam>')
  Future<Response> getUserByNick(Request request) async {
    late final GetUserByNickRequest getUserByNickRequest;
    try {
      getUserByNickRequest = await parseRequest<GetUserByNickRequest>(request);
    } catch (e) {
      return problem(
        [const InvalidBodyException()],
      );
    }

    final userID = request.params[_userNickParam];

    if (userID == null) {
      return problem([const InvalidRequest()]);
    }

    final query =
        _mapster.map2(getUserByNickRequest, userID, To<GetUserByNickQuery>());

    final result = await query.sendTo(_mediator);

    return result.match(
      problem,
      (r) => ok(_mapster.map1(r, To<GetUserByNickResponse>())),
    );
  }
}
