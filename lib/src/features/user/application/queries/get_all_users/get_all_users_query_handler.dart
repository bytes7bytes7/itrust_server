import 'dart:async';

import 'package:fpdart/fpdart.dart';
import 'package:injectable/injectable.dart';
import 'package:mapster/mapster.dart';
import 'package:mediator/mediator.dart';

import '../../../../../repositories/interfaces/interfaces.dart';
import '../../../../common/application/exceptions/exceptions.dart';
import '../../../../common/application/view_models/user_vm/user_vm.dart';
import '../../../../common/domain/domain.dart';
import '../../common/common.dart';
import 'get_all_users_query.dart';

const _limit = 10;

@singleton
class GetAllUserQueryHandler extends RequestHandler<GetAllUsersQuery,
    Either<List<DetailedException>, UsersResult>> {
  const GetAllUserQueryHandler({
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
      if (lastUserID.isStaffUserID) {
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
      startAfter: lastUserID?.isStaffUserID == true ? lastUserID : null,
    );

    users.addAll(staffUsers);

    final onlineStatuses = <OnlineStatus>[];
    for (var i = 0; i < staffUsers.length; i++) {
      onlineStatuses.add(const OnlineStatus.empty());
    }

    if (users.length == _limit) {
      return right(
        UsersResult(
          users: users
              .mapWithIndex(
                (e, i) => _mapster.map2(e, onlineStatuses[i], To<UserVM>()),
              )
              .toList(),
        ),
      );
    }

    final endUsers = await _endUserRepository.getUsersByFilter(
      forUserID: request.userID,
      limit: _limit - users.length,
      startAfter: lastUserID?.isEndUserID == true ? lastUserID : null,
    );

    users.addAll(endUsers);

    for (final user in endUsers) {
      onlineStatuses.add(await _endUserActivityRepository.get(user.id));
    }

    return right(
      UsersResult(
        users: users
            .mapWithIndex(
              (e, i) => _mapster.map2(e, onlineStatuses[i], To<UserVM>()),
            )
            .toList(),
      ),
    );
  }
}
