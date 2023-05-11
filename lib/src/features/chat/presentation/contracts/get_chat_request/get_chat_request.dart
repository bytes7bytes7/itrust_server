import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../../utils/typedef.dart';
import '../json_keys.dart';

part 'get_chat_request.g.dart';

@JsonSerializable()
class GetChatRequest {
  const GetChatRequest({
    required this.chatID,
  });

  @JsonKey(name: chatIDKey)
  final String chatID;

  factory GetChatRequest.fromJson(JsonMap json) =>
      _$GetChatRequestFromJson(json);

  JsonMap toJson() => _$GetChatRequestToJson(this);
}
