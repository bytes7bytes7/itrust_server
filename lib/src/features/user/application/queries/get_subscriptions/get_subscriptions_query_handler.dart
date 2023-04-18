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
import 'get_subscriptions_query.dart';

const _limit = 10;

@singleton
class GetSubscriptionsQueryHandler extends RequestHandler<GetSubscriptionsQuery,
    Either<List<DetailedException>, EndUsersResult>> {
  const GetSubscriptionsQueryHandler({
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
    GetSubscriptionsQuery request,
  ) async {
    final user = await _endUserRepository.getByID(id: request.userID);

    if (user == null) {
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

    final subscriptions = await _endUserRepository.getSubscriptionsByFilter(
      subscriptionsOf: request.userID,
      limit: _limit,
      startAfter: request.lastUserID,
    );

    final onlineStatuses = <OnlineStatus>[];
    for (final friend in subscriptions) {
      onlineStatuses.add(await _endUserActivityRepository.get(friend.id));
    }

    return right(
      EndUsersResult(
        users: subscriptions
            .mapWithIndex(
              (e, i) => _mapster.map2(e, onlineStatuses[i], To<EndUserVM>()),
            )
            .toList(),
      ),
    );
  }
}
