import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:uuid/uuid.dart';

import '../../../../../utils/typedef.dart';

part 'comment_id.freezed.dart';

part 'comment_id.g.dart';

@freezed
class CommentID with _$CommentID {
  const factory CommentID(String value) = _CommentID;

  factory CommentID.generate() {
    return CommentID(Uuid().v4());
  }

  factory CommentID.fromJson(JsonMap json) => _$CommentIDFromJson(json);

  factory CommentID.fromString(String string) => CommentID(string);

  const CommentID._();

  String get str => value;
}
