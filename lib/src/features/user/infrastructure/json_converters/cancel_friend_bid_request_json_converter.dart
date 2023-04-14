import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../../../utils/typedef.dart';
import '../../presentation/contracts/cancel_friend_bid_request/cancel_friend_bid_request.dart';

@Singleton(as: JsonConverter<CancelFriendBidRequest, JsonMap>)
class CancelFriendBidRequestJsonConverter
    extends JsonConverter<CancelFriendBidRequest, JsonMap> {
  const CancelFriendBidRequestJsonConverter();

  @override
  CancelFriendBidRequest fromJson(JsonMap json) {
    return CancelFriendBidRequest.fromJson(json);
  }

  @override
  JsonMap toJson(CancelFriendBidRequest object) {
    return object.toJson();
  }
}
