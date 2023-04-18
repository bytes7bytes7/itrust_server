import 'package:injectable/injectable.dart';
import 'package:mapster/mapster.dart';
import 'package:mediator/mediator.dart' as mdtr;
import 'package:shelf/shelf.dart';
import 'package:shelf_router/shelf_router.dart';

import '../../../../utils/extensions/request_x.dart';
import '../../../common/common.dart';
import '../../application/application.dart';
import '../contracts/contracts.dart';
import '../contracts/json_keys.dart';

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

  @Route.get('/all')
  Future<Response> getAllUsers(Request request) async {
    late final GetUsersRequest getUsersRequest;
    try {
      getUsersRequest = await parseRequest<GetUsersRequest>(request);
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
        _mapster.map2(getUsersRequest, user.id, To<GetAllUsersQuery>());

    final result = await query.sendTo(_mediator);

    return result.match(
      problem,
      (r) => ok(_mapster.map1(r, To<UsersResponse>())),
    );
  }

  @Route.get('/friends')
  Future<Response> getFriends(Request request) async {
    late final GetForUserRequest getForUserRequest;
    try {
      getForUserRequest = await parseRequest<GetForUserRequest>(request);
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
        _mapster.map2(getForUserRequest, user.id, To<GetFriendsQuery>());

    final result = await query.sendTo(_mediator);

    return result.match(
      problem,
      (r) => ok(_mapster.map1(r, To<EndUsersResponse>())),
    );
  }

  @Route.get('/subscribers')
  Future<Response> getSubscribers(Request request) async {
    late final GetForUserRequest getForUserRequest;
    try {
      getForUserRequest = await parseRequest<GetForUserRequest>(request);
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
        _mapster.map2(getForUserRequest, user.id, To<GetSubscribersQuery>());

    final result = await query.sendTo(_mediator);

    return result.match(
      problem,
      (r) => ok(_mapster.map1(r, To<EndUsersResponse>())),
    );
  }

  @Route.get('/subscriptions')
  Future<Response> getSubscriptions(Request request) async {
    late final GetForUserRequest getForUserRequest;
    try {
      getForUserRequest = await parseRequest<GetForUserRequest>(request);
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
        _mapster.map2(getForUserRequest, user.id, To<GetSubscriptionsQuery>());

    final result = await query.sendTo(_mediator);

    return result.match(
      problem,
      (r) => ok(_mapster.map1(r, To<EndUsersResponse>())),
    );
  }

  @Route.get('/info')
  Future<Response> getUserInfo(Request request) async {
    late final UserActionRequest userActionRequest;
    try {
      userActionRequest = await parseRequest<UserActionRequest>(request);
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
      userActionRequest,
      user.id,
      To<GetUserInfoQuery>(),
    );

    final result = await query.sendTo(_mediator);

    return result.match(
      problem,
      (r) => ok(_mapster.map1(r, To<UserInfoResponse>())),
    );
  }

  @Route.post('/friend_bid')
  Future<Response> sendFriendBid(Request request) async {
    late final UserActionRequest userActionRequest;
    try {
      userActionRequest = await parseRequest<UserActionRequest>(request);
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
      userActionRequest,
      user.id,
      To<SendFriendBidCommand>(),
    );

    final result = await command.sendTo(_mediator);

    return result.match(
      problem,
      (r) => ok(_mapster.map1(r, To<UserInfoResponse>())),
    );
  }

  @Route.post('/cancel_friend_bid')
  Future<Response> cancelFriendBid(Request request) async {
    late final UserActionRequest userActionRequest;
    try {
      userActionRequest = await parseRequest<UserActionRequest>(request);
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
      userActionRequest,
      user.id,
      To<CancelFriendBidCommand>(),
    );

    final result = await command.sendTo(_mediator);

    return result.match(
      problem,
      (r) => ok(_mapster.map1(r, To<UserInfoResponse>())),
    );
  }

  @Route.post('/respond_friend_bid')
  Future<Response> respondFriendBid(Request request) async {
    late final RespondFriendBidRequest respondFriendBidRequest;
    try {
      respondFriendBidRequest =
          await parseRequest<RespondFriendBidRequest>(request);
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
      respondFriendBidRequest,
      user.id,
      To<RespondFriendBidCommand>(),
    );

    final result = await command.sendTo(_mediator);

    return result.match(
      problem,
      (r) => ok(_mapster.map1(r, To<UserInfoResponse>())),
    );
  }

  @Route.post('/remove_friend')
  Future<Response> removeFriend(Request request) async {
    late final UserActionRequest userActionRequest;
    try {
      userActionRequest = await parseRequest<UserActionRequest>(request);
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
      userActionRequest,
      user.id,
      To<RemoveFriendCommand>(),
    );

    final result = await command.sendTo(_mediator);

    return result.match(
      problem,
      (r) => ok(_mapster.map1(r, To<UserInfoResponse>())),
    );
  }

  @Route.post('/remove_subscriber')
  Future<Response> removeSubscriber(Request request) async {
    late final UserActionRequest userActionRequest;
    try {
      userActionRequest = await parseRequest<UserActionRequest>(request);
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
      userActionRequest,
      user.id,
      To<RemoveSubscriberCommand>(),
    );

    final result = await command.sendTo(_mediator);

    return result.match(
      problem,
      (r) => ok(_mapster.map1(r, To<UserInfoResponse>())),
    );
  }

  @Route.post('/unsubscribe')
  Future<Response> unsubscribe(Request request) async {
    late final UserActionRequest userActionRequest;
    try {
      userActionRequest = await parseRequest<UserActionRequest>(request);
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
      userActionRequest,
      user.id,
      To<UnsubscribeCommand>(),
    );

    final result = await command.sendTo(_mediator);

    return result.match(
      problem,
      (r) => ok(_mapster.map1(r, To<UserInfoResponse>())),
    );
  }
}
