import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:uuid/uuid.dart';

import '../../../../../utils/typedef.dart';

part 'chat_id.freezed.dart';

part 'chat_id.g.dart';

@freezed
class ChatID with _$ChatID {
  const factory ChatID(String value) = _ChatID;

  factory ChatID.generate() {
    return ChatID(Uuid().v4());
  }

  factory ChatID.fromJson(JsonMap json) => _$ChatIDFromJson(json);

  factory ChatID.fromString(String string) => ChatID(string);

  const ChatID._();

  String get str => value;
}
