import 'dart:async';

import 'package:fpdart/fpdart.dart';
import 'package:injectable/injectable.dart';
import 'package:mapster/mapster.dart';
import 'package:mediator/mediator.dart';

import '../../../../../repositories/interfaces/interfaces.dart';
import '../../../../common/application/exceptions/exceptions.dart';
import '../../common/common.dart';
import '../../exceptions/exceptions.dart';
import '../../view_models/user_info_vm/user_info_vm.dart';
import 'remove_subscriber_command.dart';

@singleton
class RemoveSubscriberCommandHandler extends RequestHandler<
    RemoveSubscriberCommand, Either<List<DetailedException>, UserInfoResult>> {
  const RemoveSubscriberCommandHandler({
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
  FutureOr<Either<List<DetailedException>, UserInfoResult>> handle(
    RemoveSubscriberCommand request,
  ) async {
    if (request.removeUserID.isStaffUserID) {
      return left(
        [const CanNotDoThisToStaffUser()],
      );
    }

    if (request.userID == request.removeUserID) {
      return left(
        [const CanNotDoThisToYourself()],
      );
    }

    final userToRemove =
        await _endUserRepository.getByID(id: request.removeUserID);

    if (userToRemove == null) {
      return left(
        [const UserNotFound()],
      );
    }

    final isSubscriber = await _endUserRepository.isSubscriber(
      subscriberID: request.removeUserID,
      publisherID: request.userID,
    );

    if (!isSubscriber) {
      return left(
        [const NotYourSubscriber()],
      );
    }

    await _endUserRepository.unsubscribe(
      subscriberID: request.removeUserID,
      publisherID: request.userID,
    );

    final updatedUserToRemove =
        await _endUserRepository.getByID(id: request.removeUserID);

    if (updatedUserToRemove == null) {
      return left(
        [const UserNotFound()],
      );
    }

    final onlineStatus =
        await _endUserActivityRepository.get(request.removeUserID);

    final didISentFriendBid = false;
    final haveIFriendBidFromThisUser = false;

    return right(
      UserInfoResult(
        userInfo: _mapster.map5(
          updatedUserToRemove,
          request.userID,
          didISentFriendBid,
          haveIFriendBidFromThisUser,
          onlineStatus,
          To<UserInfoVM>(),
        ),
      ),
    );
  }
}
