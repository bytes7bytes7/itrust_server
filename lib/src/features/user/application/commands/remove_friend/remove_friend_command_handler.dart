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
import 'remove_friend_command.dart';

@singleton
class RemoveFriendCommandHandler extends RequestHandler<RemoveFriendCommand,
    Either<List<DetailedException>, UserInfoResult>> {
  const RemoveFriendCommandHandler({
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
    RemoveFriendCommand request,
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

    final isFriend = await _endUserRepository.isFriend(
      firstUserID: request.userID,
      secondUserID: request.removeUserID,
    );

    if (!isFriend) {
      return left(
        [const YouAreNotFriends()],
      );
    }

    await _endUserRepository.removeFriend(
      firstUserID: request.userID,
      secondUserID: request.removeUserID,
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
