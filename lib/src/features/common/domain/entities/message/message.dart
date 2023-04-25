import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../../utils/freezed_settings.dart';
import '../../value_objects/value_objects.dart';

part 'message.freezed.dart';

@Freezed(
  unionKey: unionKey,
  toJson: false,
  fromJson: false,
)
class Message with _$Message {
  const factory Message.info({
    required MessageID id,
    required ChatID chatID,
    required DateTime sentAt,
    required String markUp,
    required Map<String, String> markUpData,
    DateTime? willBeBurntAt,
  }) = InfoMessage;

  const factory Message.user({
    required MessageID id,
    required ChatID chatID,
    required UserID senderID,
    required DateTime sentAt,
    required String text,
    required List<MediaID> mediaIDs,
    DateTime? willBeBurntAt,
    DateTime? modifiedAt,
  }) = UserMessage;
}
