import 'package:freezed_annotation/freezed_annotation.dart';

import '../../value_objects/value_objects.dart';

part 'comment.freezed.dart';

@Freezed(
  toJson: false,
  fromJson: false,
)
class Comment with _$Comment {
  /// If this [Comment] comments some Post,
  /// then [replyTo] == null
  /// If this [Comment] replies to other [Comment],
  /// then [replyTo] != null
  const factory Comment({
    required CommentID id,
    required UserID authorID,
    required PostID postID,
    required DateTime createdAt,
    required String text,
    CommentID? replyToID,
    DateTime? modifiedAt,
  }) = _Comment;
}
