import 'dart:async';

import 'package:fpdart/fpdart.dart';
import 'package:injectable/injectable.dart';
import 'package:mapster/mapster.dart';
import 'package:mediator/mediator.dart';

import '../../../../../repositories/interfaces/interfaces.dart';
import '../../../../common/application/exceptions/exceptions.dart';
import '../../../../common/domain/domain.dart';
import '../../common/common.dart';
import '../../exceptions/exceptions.dart';
import '../../view_models/user_info_vm/user_info_vm.dart';
import 'send_friend_bid_command.dart';

@singleton
class SendFriendBidCommandHandler extends RequestHandler<SendFriendBidCommand,
    Either<List<DetailedException>, UserInfoResult>> {
  const SendFriendBidCommandHandler({
    required FriendBidRepository friendBidRepository,
    required EndUserRepository endUserRepository,
    required EndUserActivityRepository endUserActivityRepository,
    required Mapster mapster,
  })  : _friendBidRepository = friendBidRepository,
        _endUserRepository = endUserRepository,
        _endUserActivityRepository = endUserActivityRepository,
        _mapster = mapster;

  final FriendBidRepository _friendBidRepository;
  final EndUserRepository _endUserRepository;
  final EndUserActivityRepository _endUserActivityRepository;
  final Mapster _mapster;

  @override
  FutureOr<Either<List<DetailedException>, UserInfoResult>> handle(
    SendFriendBidCommand request,
  ) async {
    if (request.sendToUserID.isStaffUserID) {
      return left(
        [const CanNotSendFriendBidToStaffUser()],
      );
    }

    if (request.userID == request.sendToUserID) {
      return left(
        [const CanNotSendFriendBidToYourself()],
      );
    }

    // ignore: omit_local_variable_types
    final EndUser? user =
        await _endUserRepository.getByID(id: request.sendToUserID);

    if (user == null) {
      return left(
        [const UserNotFound()],
      );
    }

    final hasAlreadySentBid = await _friendBidRepository.hasBidToUser(
      from: request.userID,
      to: request.sendToUserID,
    );

    if (hasAlreadySentBid) {
      return left(
        [const BidAlreadySent()],
      );
    }

    final haveIFriendBidFromThisUser = await _friendBidRepository.hasBidToUser(
      from: request.sendToUserID,
      to: request.userID,
    );

    if (haveIFriendBidFromThisUser) {
      return left(
        [const AlreadyHaveBid()],
      );
    }

    await _friendBidRepository.add(
      from: request.userID,
      to: request.sendToUserID,
    );

    final onlineStatus =
        await _endUserActivityRepository.get(request.sendToUserID);

    final didISentFriendBid = true;

    return right(
      UserInfoResult(
        userInfo: _mapster.map5(
          user,
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
