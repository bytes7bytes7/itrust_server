import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../../utils/freezed_settings.dart';
import '../../../../../utils/typedef.dart';
import '../../../../common/application/view_models/chat_vm/chat_vm.dart';
import '../../../../common/domain/domain.dart';

part 'chat_event_response.freezed.dart';

part 'chat_event_response.g.dart';

@Freezed(
  unionKey: unionKey,
)
class ChatEventResponse with _$ChatEventResponse {
  const factory ChatEventResponse.created({
    required ChatVM chat,
  }) = CreatedChatEventResponse;

  const factory ChatEventResponse.deleted({
    required ChatID chatID,
  }) = DeletedChatEventResponse;

  const factory ChatEventResponse.updated({
    required ChatVM chat,
  }) = UpdatedChatEventResponse;

  const factory ChatEventResponse.onlineChanged({
    required ChatID chatID,
    required bool isOnline,
  }) = OnlineChangedChatEventResponse;

  factory ChatEventResponse.fromJson(JsonMap json) =>
      _$ChatEventResponseFromJson(json);
}
