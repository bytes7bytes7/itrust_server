import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../../../utils/typedef.dart';
import '../../presentation/contracts/contracts.dart';

@Singleton(as: JsonConverter<SendFriendBidRequest, JsonMap>)
class SendFriendBidRequestJsonConverter
    extends JsonConverter<SendFriendBidRequest, JsonMap> {
  const SendFriendBidRequestJsonConverter();

  @override
  SendFriendBidRequest fromJson(JsonMap json) {
    return SendFriendBidRequest.fromJson(json);
  }

  @override
  JsonMap toJson(SendFriendBidRequest object) {
    return object.toJson();
  }
}
