import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../../utils/freezed_settings.dart';
import '../../value_objects/value_objects.dart';

part 'chat.freezed.dart';

@Freezed(
  unionKey: unionKey,
  toJson: false,
  fromJson: false,
)
class Chat with _$Chat {
  /// Chat for only 1 user.
  /// All messages in this chat are always read.
  const factory Chat.monologue({
    required ChatID id,
    required DateTime createdAt,
    required UserID ownerID,
    required String title,
    String? iconName,
    MediaID? picID,
  }) = MonologueChat;

  /// Direct messages between two users.
  /// There is NO ability to add more users.
  const factory Chat.dialogue({
    required ChatID id,
    required DateTime createdAt,
    required UserID firstUserID,
    required UserID secondUserID,
  }) = DialogueChat;

  /// Chat for 1..N user(s).
  const factory Chat.group({
    required ChatID id,
    required DateTime createdAt,
    required UserID ownerID,
    required String title,
    MediaID? picID,
  }) = GroupChat;
}
