import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../../utils/typedef.dart';

part 'cancel_friend_bid_request.g.dart';

@JsonSerializable()
class CancelFriendBidRequest {
  const CancelFriendBidRequest({
    required this.cancelToUserID,
  });

  final String cancelToUserID;

  factory CancelFriendBidRequest.fromJson(JsonMap json) =>
      _$CancelFriendBidRequestFromJson(json);

  JsonMap toJson() => _$CancelFriendBidRequestToJson(this);
}
