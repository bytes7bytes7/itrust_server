import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:uuid/uuid.dart';

import '../../../../../utils/typedef.dart';

part 'post_id.freezed.dart';

part 'post_id.g.dart';

@freezed
class PostID with _$PostID {
  const factory PostID(String value) = _PostID;

  factory PostID.generate() {
    return PostID(Uuid().v4());
  }

  factory PostID.fromJson(JsonMap json) => _$PostIDFromJson(json);

  factory PostID.fromString(String string) => PostID(string);

  const PostID._();

  String get str => value;
}
