import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../../../utils/typedef.dart';
import '../../presentation/contracts/respond_friend_bid_request/respond_friend_bid_request.dart';

@Singleton(as: JsonConverter<RespondFriendBidRequest, JsonMap>)
class RespondFriendBidRequestJsonConverter
    extends JsonConverter<RespondFriendBidRequest, JsonMap> {
  const RespondFriendBidRequestJsonConverter();

  @override
  RespondFriendBidRequest fromJson(JsonMap json) {
    return RespondFriendBidRequest.fromJson(json);
  }

  @override
  JsonMap toJson(RespondFriendBidRequest object) {
    return object.toJson();
  }
}
