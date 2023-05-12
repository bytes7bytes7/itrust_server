import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../../utils/typedef.dart';
import '../json_keys.dart';

part 'get_message_request.g.dart';

@JsonSerializable()
class GetMessageRequest {
  const GetMessageRequest({
    required this.chatID,
    required this.messageID,
  });

  @JsonKey(name: chatIDKey)
  final String chatID;

  @JsonKey(name: messageIDKey)
  final String messageID;

  factory GetMessageRequest.fromJson(JsonMap json) =>
      _$GetMessageRequestFromJson(json);

  JsonMap toJson() => _$GetMessageRequestToJson(this);
}
