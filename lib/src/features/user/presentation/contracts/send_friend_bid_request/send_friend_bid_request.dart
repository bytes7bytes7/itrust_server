import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../../utils/typedef.dart';

part 'send_friend_bid_request.g.dart';

@JsonSerializable()
class SendFriendBidRequest {
  const SendFriendBidRequest({
    required this.sendTo,
  });

  final String sendTo;

  factory SendFriendBidRequest.fromJson(JsonMap json) =>
      _$SendFriendBidRequestFromJson(json);

  JsonMap toJson() => _$SendFriendBidRequestToJson(this);
}
