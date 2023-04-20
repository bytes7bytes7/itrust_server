import 'package:freezed_annotation/freezed_annotation.dart';

import '../../value_objects/value_objects.dart';

part 'chat.freezed.dart';

@Freezed(
  toJson: false,
  fromJson: false,
)
class Chat with _$Chat {
  const factory Chat.monologue({
    required ChatID id,
    required UserID ownerID,
    required String title,
    String? iconName,
  }) = MonologueChat;
}
