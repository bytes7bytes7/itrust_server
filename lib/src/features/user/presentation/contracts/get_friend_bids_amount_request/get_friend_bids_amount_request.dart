import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../../utils/typedef.dart';

part 'get_friend_bids_amount_request.g.dart';

@JsonSerializable()
class GetFriendBidsAmountRequest {
  const GetFriendBidsAmountRequest();

  factory GetFriendBidsAmountRequest.fromJson(JsonMap json) =>
      _$GetFriendBidsAmountRequestFromJson(json);

  JsonMap toJson() => _$GetFriendBidsAmountRequestToJson(this);
}
