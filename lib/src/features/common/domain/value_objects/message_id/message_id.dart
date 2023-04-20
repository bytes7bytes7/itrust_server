import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:uuid/uuid.dart';

import '../../../../../utils/typedef.dart';

part 'message_id.freezed.dart';

part 'message_id.g.dart';

@freezed
class MessageID with _$MessageID {
  const factory MessageID(String value) = _MessageID;

  factory MessageID.generate() {
    return MessageID(Uuid().v4());
  }

  factory MessageID.fromJson(JsonMap json) => _$MessageIDFromJson(json);

  factory MessageID.fromString(String string) => MessageID(string);

  const MessageID._();

  String get str => value;
}
