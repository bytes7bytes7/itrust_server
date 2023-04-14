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
    required Mapster mapster,
  })  : _friendBidRepository = friendBidRepository,
        _endUserRepository = endUserRepository,
        _mapster = mapster;

  final FriendBidRepository _friendBidRepository;
  final EndUserRepository _endUserRepository;
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

    final hasBidAlready = await _friendBidRepository.hasBidToUser(
      from: request.userID,
      to: request.sendToUserID,
    );

    if (hasBidAlready) {
      return left(
        [const BidAlreadySent()],
      );
    }

    await _friendBidRepository.add(
      from: request.userID,
      to: request.sendToUserID,
    );

    final didISentFriendBid = true;

    return right(
      UserInfoResult(
        userInfo: _mapster.map3(
          user,
          request.userID,
          didISentFriendBid,
          To<UserInfoVM>(),
        ),
      ),
    );
  }
}
