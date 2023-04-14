import 'dart:async';

import 'package:fpdart/fpdart.dart';
import 'package:injectable/injectable.dart';
import 'package:mapster/mapster.dart';
import 'package:mediator/mediator.dart';

import '../../../../../repositories/interfaces/interfaces.dart';
import '../../../../common/application/exceptions/exceptions.dart';
import '../../../../common/domain/domain.dart';
import '../../common/common.dart';
import '../../view_models/user_info_vm/user_info_vm.dart';
import 'get_user_info_query.dart';

@singleton
class GetUserInfoQueryHandler extends RequestHandler<GetUserInfoQuery,
    Either<List<DetailedException>, UserInfoResult>> {
  const GetUserInfoQueryHandler({
    required FriendBidRepository friendBidRepository,
    required EndUserRepository endUserRepository,
    required StaffUserRepository staffUserRepository,
    required Mapster mapster,
  })  : _friendBidRepository = friendBidRepository,
        _endUserRepository = endUserRepository,
        _staffUserRepository = staffUserRepository,
        _mapster = mapster;

  final FriendBidRepository _friendBidRepository;
  final EndUserRepository _endUserRepository;
  final StaffUserRepository _staffUserRepository;
  final Mapster _mapster;

  @override
  FutureOr<Either<List<DetailedException>, UserInfoResult>> handle(
    GetUserInfoQuery request,
  ) async {
    User? user;

    if (request.aboutUserID.isEndUserID) {
      user = await _endUserRepository.getByID(id: request.aboutUserID);
    } else if (request.aboutUserID.isStaffUserID) {
      user = await _staffUserRepository.getByID(id: request.aboutUserID);
    }

    if (user == null) {
      return left(
        [const UserNotFound()],
      );
    }

    final didISentFriendBid = await _friendBidRepository.hasBidToUser(
      from: request.userID,
      to: request.aboutUserID,
    );

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
