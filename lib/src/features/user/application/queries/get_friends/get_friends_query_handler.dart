import 'dart:async';

import 'package:fpdart/fpdart.dart';
import 'package:injectable/injectable.dart';
import 'package:mapster/mapster.dart';
import 'package:mediator/mediator.dart';

import '../../../../../repositories/interfaces/interfaces.dart';
import '../../../../common/application/exceptions/exceptions.dart';
import '../../../../common/application/view_models/user_vm/user_vm.dart';
import '../../common/common.dart';
import 'get_friends_query.dart';

const _limit = 10;

@singleton
class GetFriendsQueryHandler extends RequestHandler<GetFriendsQuery,
    Either<List<DetailedException>, UsersResult>> {
  const GetFriendsQueryHandler({
    required EndUserRepository endUserRepository,
    required Mapster mapster,
  })  : _endUserRepository = endUserRepository,
        _mapster = mapster;

  final EndUserRepository _endUserRepository;
  final Mapster _mapster;

  @override
  FutureOr<Either<List<DetailedException>, UsersResult>> handle(
    GetFriendsQuery request,
  ) async {
    final friendsOwner =
        await _endUserRepository.getByID(id: request.friendsTo);

    if (friendsOwner == null) {
      return left(
        [const UserNotFound()],
      );
    }

    final friends = await _endUserRepository.getFriendsByFilter(
      friendsTo: request.friendsTo,
      limit: _limit,
      startAfter: request.lastUserID,
    );

    return right(
      UsersResult(
        users: friends.map((e) => _mapster.map1(e, To<EndUserVM>())).toList(),
      ),
    );
  }
}
