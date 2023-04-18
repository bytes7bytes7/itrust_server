import 'dart:async';

import 'package:fpdart/fpdart.dart';
import 'package:injectable/injectable.dart';
import 'package:mapster/mapster.dart';
import 'package:mediator/mediator.dart';

import '../../../../../repositories/interfaces/interfaces.dart';
import '../../../../common/application/exceptions/exceptions.dart';
import '../../../../common/application/view_models/user_vm/user_vm.dart';
import '../../common/common.dart';
import '../../exceptions/exceptions.dart';
import 'get_friends_query.dart';

const _limit = 10;

@singleton
class GetFriendsQueryHandler extends RequestHandler<GetFriendsQuery,
    Either<List<DetailedException>, EndUsersResult>> {
  const GetFriendsQueryHandler({
    required EndUserRepository endUserRepository,
    required EndUserActivityRepository endUserActivityRepository,
    required Mapster mapster,
  })  : _endUserRepository = endUserRepository,
        _endUserActivityRepository = endUserActivityRepository,
        _mapster = mapster;

  final EndUserRepository _endUserRepository;
  final EndUserActivityRepository _endUserActivityRepository;
  final Mapster _mapster;

  @override
  FutureOr<Either<List<DetailedException>, EndUsersResult>> handle(
    GetFriendsQuery request,
  ) async {
    final friendsOwner =
        await _endUserRepository.getByID(id: request.friendsTo);

    if (friendsOwner == null) {
      return left(
        [const UserNotFound()],
      );
    }

    final lastUserID = request.lastUserID;
    if (lastUserID != null) {
      if (lastUserID.isStaffUserID) {
        return left(
          [const CanNotDoThisToStaffUser()],
        );
      }

      final lastUser = await _endUserRepository.getByID(id: lastUserID);

      if (lastUser == null) {
        return left(
          [const UserNotFound()],
        );
      }
    }

    final friends = await _endUserRepository.getFriendsByFilter(
      friendsTo: request.friendsTo,
      limit: _limit,
      startAfter: request.lastUserID,
    );

    final onlineStatuses = <OnlineStatus>[];
    for (final friend in friends) {
      onlineStatuses.add(await _endUserActivityRepository.get(friend.id));
    }

    return right(
      EndUsersResult(
        users: friends
            .mapWithIndex(
              (e, i) => _mapster.map2(e, onlineStatuses[i], To<EndUserVM>()),
            )
            .toList(),
      ),
    );
  }
}
