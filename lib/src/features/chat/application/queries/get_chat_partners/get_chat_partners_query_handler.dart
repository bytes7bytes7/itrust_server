import 'dart:async';
import 'dart:collection';

import 'package:fpdart/fpdart.dart';
import 'package:injectable/injectable.dart';
import 'package:mapster/mapster.dart';
import 'package:mediator/mediator.dart';

import '../../../../../repositories/interfaces/interfaces.dart';
import '../../../../common/application/common/common.dart';
import '../../../../common/application/exceptions/exceptions.dart';
import '../../../../common/application/mapper_dto/to_user_vm.dart';
import '../../../../common/application/view_models/user_vm/user_vm.dart';
import '../../../../common/domain/domain.dart';
import 'get_chat_partners_query.dart';

const _limit = 10;

@singleton
class GetChatPartnersQueryHandler extends RequestHandler<GetChatPartnersQuery,
    Either<List<DetailedException>, UsersResult>> {
  const GetChatPartnersQueryHandler({
    required EndUserRepository endUserRepository,
    required StaffUserRepository staffUserRepository,
    required EndUserActivityRepository endUserActivityRepository,
    required Mapster mapster,
  })  : _endUserRepository = endUserRepository,
        _staffUserRepository = staffUserRepository,
        _endUserActivityRepository = endUserActivityRepository,
        _mapster = mapster;

  final EndUserRepository _endUserRepository;
  final StaffUserRepository _staffUserRepository;
  final EndUserActivityRepository _endUserActivityRepository;
  final Mapster _mapster;

  @override
  FutureOr<Either<List<DetailedException>, UsersResult>> handle(
    GetChatPartnersQuery request,
  ) async {
    final lastUserID = request.lastUserID;
    if (lastUserID != null) {
      User? lastUser;
      if (lastUserID.isStaffID) {
        lastUser = await _staffUserRepository.getByID(id: lastUserID);
      } else {
        lastUser = await _endUserRepository.getByID(id: lastUserID);
      }

      if (lastUser == null) {
        return left(
          [const UserNotFound()],
        );
      }
    }

    final users = <User>[];
    final onlineStatusMap = HashMap<UserID, OnlineStatus>();
    final avatarsAmountMap = HashMap<UserID, int>();
    final avatarMap = HashMap<UserID, String?>();

    if (lastUserID == null || lastUserID.isEndID) {
      final friends = await _endUserRepository.getFriendsByFilter(
        friendsTo: request.userID,
        limit: _limit,
        startAfter: request.lastUserID,
      );

      users.addAll(friends);

      for (final friend in friends) {
        onlineStatusMap[friend.id] =
            await _endUserActivityRepository.get(friend.id);
        avatarsAmountMap[friend.id] =
            await _endUserRepository.getAvatarsAmount(id: friend.id);
        avatarMap[friend.id] =
            await _endUserRepository.getAvatar(id: friend.id);
      }
    }

    if (users.length < _limit) {
      final staffUsers = await _staffUserRepository.getUsersByFilter(
        limit: _limit,
        startAfter: lastUserID,
      );

      users.addAll(staffUsers);

      for (final user in staffUsers) {
        avatarsAmountMap[user.id] =
            await _staffUserRepository.getAvatarsAmount(id: user.id);
        avatarMap[user.id] = await _staffUserRepository.getAvatar(id: user.id);
      }
    }

    return right(
      UsersResult(
        users: users
            .map(
              (e) => _mapster.map2(
                e,
                ToUserVM(
                  onlineStatus: onlineStatusMap[e.id]!,
                  avatarsAmount: avatarsAmountMap[e.id]!,
                  avatarUrl: avatarMap[e.id],
                ),
                To<UserVM>(),
              ),
            )
            .toList(),
      ),
    );
  }
}
