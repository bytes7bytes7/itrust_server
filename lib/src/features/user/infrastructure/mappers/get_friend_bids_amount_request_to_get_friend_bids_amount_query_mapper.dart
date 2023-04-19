import 'package:mapster/mapster.dart';

import '../../../common/domain/value_objects/user_id/user_id.dart';
import '../../application/queries/get_friend_bids_amount/get_friend_bids_amount.dart';
import '../../presentation/contracts/get_friend_bids_amount_request/get_friend_bids_amount_request.dart';

class GetFriendBidsAmountRequestToGetFriendBidsAmountQueryMapper
    extends TwoSourcesMapper<GetFriendBidsAmountRequest, UserID,
        GetFriendBidsAmountQuery> {
  GetFriendBidsAmountRequestToGetFriendBidsAmountQueryMapper(super.input);

  @override
  GetFriendBidsAmountQuery map() {
    return GetFriendBidsAmountQuery(
      userID: _userID,
    );
  }

  UserID get _userID => source2;
}
