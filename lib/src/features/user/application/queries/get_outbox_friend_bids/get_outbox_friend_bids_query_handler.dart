import 'dart:async';
import 'dart:collection';

import 'package:fpdart/fpdart.dart';
import 'package:injectable/injectable.dart';
import 'package:mapster/mapster.dart';
import 'package:mediator/mediator.dart';

import '../../../../../repositories/interfaces/interfaces.dart';
import '../../../../common/application/exceptions/exceptions.dart';
import '../../../../common/application/mapper_dto/to_user_vm.dart';
import '../../../../common/application/view_models/user_vm/user_vm.dart';
import '../../../../common/domain/domain.dart';
import '../../common/common.dart';
import '../../exceptions/exceptions.dart';
import 'get_outbox_friend_bids_query.dart';

const _limit = 10;

@singleton
class GetOutboxFriendBidsQueryHandler extends RequestHandler<
    GetOutboxFriendBidsQuery, Either<List<DetailedException>, EndUsersResult>> {
  const GetOutboxFriendBidsQueryHandler({
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
    GetOutboxFriendBidsQuery request,
  ) async {
    final user = await _endUserRepository.getByID(id: request.userID);

    if (user == null) {
      return left(
        [const UserNotFound()],
      );
    }

    final lastUserID = request.lastUserID;
    if (lastUserID != null) {
      if (lastUserID.isStaffID) {
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

    final outboxBidUsers =
        await _endUserRepository.getUsersWithBidsFromUserWithFilter(
      userID: request.userID,
      limit: _limit,
      startAfter: request.lastUserID,
    );

    final onlineStatusMap = HashMap<UserID, OnlineStatus>();
    final avatarsAmountMap = HashMap<UserID, int>();
    final avatarMap = HashMap<UserID, String?>();
    for (final user in outboxBidUsers) {
      onlineStatusMap[user.id] = await _endUserActivityRepository.get(user.id);
      avatarsAmountMap[user.id] =
          await _endUserRepository.getAvatarsAmount(id: user.id);
      avatarMap[user.id] = await _endUserRepository.getAvatar(id: user.id);
    }

    return right(
      EndUsersResult(
        users: outboxBidUsers
            .map(
              (e) => _mapster.map2(
                e,
                ToUserVM(
                  onlineStatus: onlineStatusMap[e.id]!,
                  avatarsAmount: avatarsAmountMap[e.id]!,
                  avatarUrl: avatarMap[e.id],
                ),
                To<EndUserVM>(),
              ),
            )
            .toList(),
      ),
    );
  }
}
