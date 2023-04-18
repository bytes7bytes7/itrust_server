import 'package:mapster/mapster.dart';

import '../../application/common/common.dart';
import '../../presentation/contracts/people_amount_response/people_amount_response.dart';

class PeopleAmountResultToPeopleAmountResponseMapper
    extends OneSourceMapper<PeopleAmountResult, PeopleAmountResponse> {
  PeopleAmountResultToPeopleAmountResponseMapper(super.input);

  @override
  PeopleAmountResponse map() {
    return PeopleAmountResponse(
      allUsersAmount: _result.allUsersAmount,
      friendsAmount: _result.friendsAmount,
      subscribersAmount: _result.subscribersAmount,
      subscriptionsAmount: _result.subscriptionsAmount,
    );
  }

  PeopleAmountResult get _result => source;
}
