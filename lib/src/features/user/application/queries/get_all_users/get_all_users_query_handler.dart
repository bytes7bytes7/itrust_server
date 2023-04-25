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
import 'get_all_users_query.dart';

const _limit = 10;

@singleton
class GetAllUsersQueryHandler extends RequestHandler<GetAllUsersQuery,
    Either<List<DetailedException>, UsersResult>> {
  const GetAllUsersQueryHandler({
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
    GetAllUsersQuery request,
  ) async {
    final lastUserID = request.lastUserID;
    if (lastUserID != null) {
      if (lastUserID.isStaffID) {
        final lastUser = await _staffUserRepository.getByID(id: lastUserID);

        if (lastUser == null) {
          return left(
            [const UserNotFound()],
          );
        }
      }

      final lastUser = await _endUserRepository.getByID(id: lastUserID);

      if (lastUser == null) {
        return left(
          [const UserNotFound()],
        );
      }
    }

    final users = <User>[];

    final staffUsers = await _staffUserRepository.getUsersByFilter(
      limit: _limit,
      startAfter: lastUserID?.isStaffID == true ? lastUserID : null,
    );

    users.addAll(staffUsers);

    final onlineStatusMap = HashMap<UserID, OnlineStatus>();
    final avatarsAmountMap = HashMap<UserID, int>();
    final avatarMap = HashMap<UserID, String?>();
    for (final user in staffUsers) {
      onlineStatusMap[user.id] = const OnlineStatus.empty();
      avatarsAmountMap[user.id] =
          await _staffUserRepository.getAvatarsAmount(id: user.id);
      avatarMap[user.id] = await _staffUserRepository.getAvatar(id: user.id);
    }

    if (users.length == _limit) {
      return right(
        UsersResult(
          users: users
              .mapWithIndex(
                (e, i) => _mapster.map2(
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

    final endUsers = await _endUserRepository.getUsersByFilter(
      limit: _limit - users.length,
      startAfter: lastUserID?.isEndID == true ? lastUserID : null,
    );

    users.addAll(endUsers);

    for (final user in endUsers) {
      onlineStatusMap[user.id] = await _endUserActivityRepository.get(user.id);
      avatarsAmountMap[user.id] =
          await _endUserRepository.getAvatarsAmount(id: user.id);
      avatarMap[user.id] = await _endUserRepository.getAvatar(id: user.id);
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
