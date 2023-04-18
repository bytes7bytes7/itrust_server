import 'package:mapster/mapster.dart';

import '../../../common/domain/domain.dart';
import '../../application/queries/get_people_amount/get_people_amount.dart';
import '../../presentation/contracts/get_people_amount_request/get_people_amount_request.dart';

class GetPeopleAmountRequestToGetPeopleAmountQueryMapper
    extends TwoSourcesMapper<GetPeopleAmountRequest, UserID,
        GetPeopleAmountQuery> {
  GetPeopleAmountRequestToGetPeopleAmountQueryMapper(super.input);

  @override
  GetPeopleAmountQuery map() {
    return GetPeopleAmountQuery(
      userID: _userID,
    );
  }

  UserID get _userID => source2;
}
