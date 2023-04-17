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
import 'unsubscribe_command.dart';

@singleton
class UnsubscribeCommandHandler extends RequestHandler<UnsubscribeCommand,
    Either<List<DetailedException>, UserInfoResult>> {
  const UnsubscribeCommandHandler({
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
    UnsubscribeCommand request,
  ) async {
    if (request.unsubscribeUserID.isStaffUserID) {
      return left(
        [const CanNotDoThisToStaffUser()],
      );
    }

    if (request.userID == request.unsubscribeUserID) {
      return left(
        [const CanNotDoThisToYourself()],
      );
    }

    final publisher =
        await _endUserRepository.getByID(id: request.unsubscribeUserID);

    if (publisher == null) {
      return left(
        [const UserNotFound()],
      );
    }

    final isPublisher = await _endUserRepository.isPublisher(
      subscriberID: request.userID,
      publisherID: request.unsubscribeUserID,
    );

    if (!isPublisher) {
      return left(
        [const YouAreNotSubscriber()],
      );
    }

    await _endUserRepository.unsubscribe(
      subscriberID: request.userID,
      publisherID: request.unsubscribeUserID,
    );

    final updatedPublisher =
        await _endUserRepository.getByID(id: request.unsubscribeUserID);

    if (updatedPublisher == null) {
      return left(
        [const UserNotFound()],
      );
    }

    final onlineStatus =
        await _endUserActivityRepository.get(request.unsubscribeUserID);

    final didISentFriendBid = false;
    final haveIFriendBidFromThisUser = false;

    return right(
      UserInfoResult(
        userInfo: _mapster.map5(
          updatedPublisher,
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
