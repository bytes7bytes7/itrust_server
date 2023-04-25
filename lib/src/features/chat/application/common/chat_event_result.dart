import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../utils/freezed_settings.dart';
import '../../../common/application/view_models/chat_vm/chat_vm.dart';
import '../../../common/domain/domain.dart';

part 'chat_event_result.freezed.dart';

@Freezed(
  unionKey: unionKey,
  toJson: false,
  fromJson: false,
)
class ChatEventResult with _$ChatEventResult {
  const factory ChatEventResult.created({
    required ChatVM chat,
  }) = CreatedChatEventResult;

  const factory ChatEventResult.deleted({
    required ChatID chatID,
  }) = DeletedChatEventResult;

  const factory ChatEventResult.updated({
    required ChatVM chat,
  }) = UpdatedChatEventResult;

  const factory ChatEventResult.onlineChanged({
    required ChatID chatID,
    required bool isOnline,
  }) = OnlineChangedChatEventResult;
}
