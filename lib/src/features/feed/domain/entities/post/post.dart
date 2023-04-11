import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../../utils/typedef.dart';
import '../../../../common/domain/domain.dart';
import '../../value_objects/comment_id/comment_id.dart';
import '../../value_objects/media_id/media_id.dart';
import '../../value_objects/post_id/post_id.dart';

part 'post.freezed.dart';

part 'post.g.dart';

@freezed
class Post with _$Post {
  const factory Post({
    required PostID id,
    required UserID authorID,
    required DateTime createdAt,
    required String text,
    required List<MediaID> mediaIDs,
    required List<UserID> likedByIDs,
    required List<CommentID> commentIDs,
    required List<String> tags,
  }) = _Post;

  factory Post.fromJson(JsonMap json) => _$PostFromJson(json);
}
