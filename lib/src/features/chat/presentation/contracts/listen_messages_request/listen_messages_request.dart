import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../../utils/typedef.dart';
import '../json_keys.dart';

part 'listen_messages_request.g.dart';

@JsonSerializable()
class ListenMessagesRequest {
  const ListenMessagesRequest({
    required this.chatID,
  });

  @JsonKey(name: chatIDKey)
  final String chatID;

  factory ListenMessagesRequest.fromJson(JsonMap json) =>
      _$ListenMessagesRequestFromJson(json);

  JsonMap toJson() => _$ListenMessagesRequestToJson(this);
}
