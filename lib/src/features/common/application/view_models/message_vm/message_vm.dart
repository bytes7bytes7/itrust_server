import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../../utils/freezed_settings.dart';
import '../../../../../utils/typedef.dart';
import '../../../domain/value_objects/value_objects.dart';
import '../media_vm/media_vm.dart';

part 'message_vm.freezed.dart';

part 'message_vm.g.dart';

@Freezed(
  unionKey: unionKey,
)
class MessageVM with _$MessageVM {
  const factory MessageVM.info({
    required MessageID id,
    required ChatID chatID,
    required DateTime sentAt,
    required bool isReadByMe,
    required String markUp,
    required Map<String, String> markUpData,
    DateTime? willBeBurntAt,
  }) = InfoMessageVM;

  const factory MessageVM.user({
    required MessageID id,
    required ChatID chatID,
    required UserID senderID,
    required DateTime sentAt,
    required bool isReadByMe,
    required String text,
    required List<MediaVM> media,
    DateTime? willBeBurntAt,
    DateTime? modifiedAt,
  }) = UserMessageVM;

  factory MessageVM.fromJson(JsonMap json) => _$MessageVMFromJson(json);
}
