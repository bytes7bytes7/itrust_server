import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:uuid/uuid.dart';

import '../../../../../utils/typedef.dart';

part 'chat_id.freezed.dart';

part 'chat_id.g.dart';

const _monologuePrefix = 'm';
const _dialoguePrefix = 'd';
const _groupPrefix = 'g';

@freezed
class ChatID with _$ChatID {
  const factory ChatID(String value) = _ChatID;

  factory ChatID.generateMonologue() {
    return ChatID('$_monologuePrefix${Uuid().v4()}');
  }

  factory ChatID.generateDialogue() {
    return ChatID('$_dialoguePrefix${Uuid().v4()}');
  }

  factory ChatID.generateGroup() {
    return ChatID('$_groupPrefix${Uuid().v4()}');
  }

  factory ChatID.fromJson(JsonMap json) => _$ChatIDFromJson(json);

  factory ChatID.fromString(String string) => ChatID(string);

  const ChatID._();

  String get str => value;

  bool get isMonologueID => value.startsWith(_monologuePrefix);

  bool get isDialogueID => value.startsWith(_dialoguePrefix);

  bool get isGroupID => value.startsWith(_groupPrefix);
}
