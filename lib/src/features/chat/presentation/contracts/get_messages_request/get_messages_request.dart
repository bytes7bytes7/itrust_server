import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../../utils/typedef.dart';
import '../json_keys.dart';

part 'get_messages_request.g.dart';

@JsonSerializable()
class GetMessagesRequest {
  const GetMessagesRequest({
    required this.chatID,
    required this.lastMessageID,
  });

  @JsonKey(name: chatIDKey)
  final String chatID;
  final String? lastMessageID;

  factory GetMessagesRequest.fromJson(JsonMap json) =>
      _$GetMessagesRequestFromJson(json);

  JsonMap toJson() => _$GetMessagesRequestToJson(this);
}
