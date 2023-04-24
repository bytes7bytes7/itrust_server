import 'dart:async';

import 'package:fpdart/fpdart.dart';
import 'package:injectable/injectable.dart';
import 'package:mediator/mediator.dart';

import '../../../../../repositories/interfaces/interfaces.dart';
import '../../../../common/application/exceptions/exceptions.dart';
import '../../common/common.dart';
import 'get_people_amount_query.dart';

@singleton
class GetPeopleAmountQueryHandler extends RequestHandler<GetPeopleAmountQuery,
    Either<List<DetailedException>, PeopleAmountResult>> {
  const GetPeopleAmountQueryHandler({
    required EndUserRepository endUserRepository,
    required StaffUserRepository staffUserRepository,
  })  : _endUserRepository = endUserRepository,
        _staffUserRepository = staffUserRepository;

  final EndUserRepository _endUserRepository;
  final StaffUserRepository _staffUserRepository;

  @override
  FutureOr<Either<List<DetailedException>, PeopleAmountResult>> handle(
    GetPeopleAmountQuery request,
  ) async {
    final user = await _endUserRepository.getByID(id: request.userID);

    if (user == null) {
      return left(
        [const UserNotFound()],
      );
    }

    final endUsersAmount = await _endUserRepository.getAmountOfUsers();
    final staffUsersAmount = await _staffUserRepository.getAmountOfUsers();

    final friendsAmount =
        await _endUserRepository.getFriendsAmount(userID: request.userID);

    final subscribersAmount =
        await _endUserRepository.getSubscribersAmount(userID: request.userID);
    final subscriptionsAmount =
        await _endUserRepository.getSubscriptionsAmount(userID: request.userID);

    return right(
      PeopleAmountResult(
        allUsersAmount: endUsersAmount + staffUsersAmount,
        friendsAmount: friendsAmount,
        subscribersAmount: subscribersAmount,
        subscriptionsAmount: subscriptionsAmount,
      ),
    );
  }
}
