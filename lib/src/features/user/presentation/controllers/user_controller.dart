import 'package:injectable/injectable.dart';
import 'package:mapster/mapster.dart';
import 'package:mediator/mediator.dart' as mdtr;
import 'package:shelf/shelf.dart';
import 'package:shelf_router/shelf_router.dart';

import '../../../../utils/extensions/request_x.dart';
import '../../../common/common.dart';
import '../../application/application.dart';
import '../contracts/contracts.dart';

part 'user_controller.g.dart';

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

  @Route.get('/id/<$userIDKey>')
  Future<Response> getUserByID(Request request) async {
    late final GetUserByIDRequest getUserByIDRequest;
    try {
      getUserByIDRequest = await parseRequest<GetUserByIDRequest>(request);
    } catch (e) {
      return problem(
        [const InvalidBodyException()],
      );
    }

    final user = request.user;

    if (user == null) {
      return problem([const UserNotFound()]);
    }

    final query =
        _mapster.map2(getUserByIDRequest, user.id, To<GetUserByIDQuery>());

    final result = await query.sendTo(_mediator);

    return result.match(
      problem,
      (r) => ok(_mapster.map1(r, To<UserResponse>())),
    );
  }

  @Route.get('/nick/<$userNickKey>')
  Future<Response> getUserByNick(Request request) async {
    late final GetUserByNickRequest getUserByNickRequest;
    try {
      getUserByNickRequest = await parseRequest<GetUserByNickRequest>(request);
    } catch (e) {
      return problem(
        [const InvalidBodyException()],
      );
    }

    final user = request.user;

    if (user == null) {
      return problem([const UserNotFound()]);
    }

    final query =
        _mapster.map2(getUserByNickRequest, user.id, To<GetUserByNickQuery>());

    final result = await query.sendTo(_mediator);

    return result.match(
      problem,
      (r) => ok(_mapster.map1(r, To<UserResponse>())),
    );
  }

  @Route.get('/friends')
  Future<Response> getFriends(Request request) async {
    late final GetFriendsRequest getFriendsRequest;
    try {
      getFriendsRequest = await parseRequest<GetFriendsRequest>(request);
    } catch (e) {
      return problem(
        [const InvalidBodyException()],
      );
    }

    final user = request.user;

    if (user == null) {
      return problem([const UserNotFound()]);
    }

    final query =
        _mapster.map2(getFriendsRequest, user.id, To<GetFriendsQuery>());

    final result = await query.sendTo(_mediator);

    return result.match(
      problem,
      (r) => ok(_mapster.map1(r, To<UsersResponse>())),
    );
  }

  @Route.post('/friend_bid')
  Future<Response> sendFriendBid(Request request) async {
    late final SendFriendBidRequest sendFriendBidRequest;
    try {
      sendFriendBidRequest = await parseRequest<SendFriendBidRequest>(request);
    } catch (e) {
      return problem(
        [const InvalidBodyException()],
      );
    }

    final user = request.user;

    if (user == null) {
      return problem([const UserNotFound()]);
    }

    final command = _mapster.map2(
      sendFriendBidRequest,
      user.id,
      To<SendFriendBidCommand>(),
    );

    final result = await command.sendTo(_mediator);

    return result.match(
      problem,
      (r) => ok(_mapster.map1(r, To<UserInfoResponse>())),
    );
  }

  @Route.get('/info')
  Future<Response> getUserInfo(Request request) async {
    late final GetUserInfoRequest getUserInfoRequest;
    try {
      getUserInfoRequest = await parseRequest<GetUserInfoRequest>(request);
    } catch (e) {
      return problem(
        [const InvalidBodyException()],
      );
    }

    final user = request.user;

    if (user == null) {
      return problem([const UserNotFound()]);
    }

    final query = _mapster.map2(
      getUserInfoRequest,
      user.id,
      To<GetUserInfoQuery>(),
    );

    final result = await query.sendTo(_mediator);

    return result.match(
      problem,
      (r) => ok(_mapster.map1(r, To<UserInfoResponse>())),
    );
  }
}
