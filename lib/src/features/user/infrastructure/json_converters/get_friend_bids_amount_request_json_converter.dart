import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../../../utils/typedef.dart';
import '../../presentation/contracts/get_friend_bids_amount_request/get_friend_bids_amount_request.dart';

@Singleton(as: JsonConverter<GetFriendBidsAmountRequest, JsonMap>)
class GetFriendBidsAmountRequestJsonConverter
    extends JsonConverter<GetFriendBidsAmountRequest, JsonMap> {
  const GetFriendBidsAmountRequestJsonConverter();

  @override
  GetFriendBidsAmountRequest fromJson(JsonMap json) {
    return GetFriendBidsAmountRequest.fromJson(json);
  }

  @override
  JsonMap toJson(GetFriendBidsAmountRequest object) {
    return object.toJson();
  }
}
