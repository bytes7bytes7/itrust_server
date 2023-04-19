import 'dart:async';

import 'package:fpdart/fpdart.dart';
import 'package:injectable/injectable.dart';
import 'package:mediator/mediator.dart';

import '../../../../../repositories/interfaces/interfaces.dart';
import '../../../../common/application/exceptions/exceptions.dart';
import '../../common/common.dart';
import 'get_friend_bids_amount_query.dart';

@singleton
class GetFriendBidsAmountQueryHandler extends RequestHandler<
    GetFriendBidsAmountQuery,
    Either<List<DetailedException>, FriendBidsAmountResult>> {
  const GetFriendBidsAmountQueryHandler({
    required EndUserRepository endUserRepository,
  }) : _endUserRepository = endUserRepository;

  final EndUserRepository _endUserRepository;

  @override
  FutureOr<Either<List<DetailedException>, FriendBidsAmountResult>> handle(
    GetFriendBidsAmountQuery request,
  ) async {
    final user = await _endUserRepository.getByID(id: request.userID);

    if (user == null) {
      return left(
        [const UserNotFound()],
      );
    }

    return right(
      FriendBidsAmountResult(
        inboxAmount: user.friendsBidsToMe.length,
        outboxAmount: user.myFriendBids.length,
      ),
    );
  }
}
