import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../common/application/view_models/chat_vm/chat_vm.dart';
import '../../../common/domain/domain.dart';

part 'chat_event_result.freezed.dart';

@Freezed(
  toJson: false,
  fromJson: false,
)
class ChatEventResult with _$ChatEventResult {
  const factory ChatEventResult({
    @Default([]) List<ChatVM> created,
    @Default([]) List<ChatID> deleted,
    @Default([]) List<ChatVM> updated,
  }) = _ChatEventResult;
}
