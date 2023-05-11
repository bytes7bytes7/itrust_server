import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../../utils/freezed_settings.dart';
import '../../../../../utils/typedef.dart';
import '../../../domain/domain.dart';
import '../media_vm/media_vm.dart';

part 'chat_vm.freezed.dart';

part 'chat_vm.g.dart';

@Freezed(
  unionKey: unionKey,
)
class ChatVM with _$ChatVM {
  const factory ChatVM.monologue({
    required ChatID id,
    required String title,
    String? iconName,
    MediaVM? pic,
    MessageID? lastMessageID,
  }) = MonologueChatVM;

  const factory ChatVM.dialogue({
    required ChatID id,
    required UserID partnerID,
    required int unreadAmount,
    MessageID? lastMessageID,
  }) = DialogueChatVM;

  const factory ChatVM.group({
    required ChatID id,
    required UserID ownerID,
    required int participantsAmount,
    required String title,
    required int unreadAmount,
    MediaVM? pic,
    MessageID? lastMessageID,
  }) = GroupChatVM;

  factory ChatVM.fromJson(JsonMap json) => _$ChatVMFromJson(json);
}
