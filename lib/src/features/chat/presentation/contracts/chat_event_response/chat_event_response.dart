import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../../utils/typedef.dart';
import '../../../../common/application/view_models/chat_vm/chat_vm.dart';
import '../../../../common/domain/domain.dart';
import '../chat_last_message/chat_last_message.dart';

part 'chat_event_response.g.dart';

@JsonSerializable()
class ChatEventResponse {
  const ChatEventResponse({
    this.created = const [],
    this.deleted = const [],
    this.updated = const [],
    this.lastMessage = const [],
  });

  final List<ChatVM> created;
  final List<ChatID> deleted;
  final List<ChatVM> updated;
  final List<ChatLastMessage> lastMessage;

  factory ChatEventResponse.fromJson(JsonMap json) =>
      _$ChatEventResponseFromJson(json);

  JsonMap toJson() => _$ChatEventResponseToJson(this);
}
