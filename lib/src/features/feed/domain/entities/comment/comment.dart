import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../../utils/typedef.dart';
import '../../../../common/domain/domain.dart';
import '../../value_objects/comment_id/comment_id.dart';
import '../../value_objects/post_id/post_id.dart';

part 'comment.freezed.dart';

part 'comment.g.dart';

@freezed
class Comment with _$Comment {
  const factory Comment({
    required CommentID id,
    required UserID authorID,
    required PostID postID,
    required DateTime createdAt,
    required String text,
    required List<UserID> likedBy,
    required List<CommentID> replies,
    CommentID? replyTo,
    DateTime? modifiedAt,
  }) = _Comment;

  factory Comment.fromJson(JsonMap json) => _$CommentFromJson(json);
}
