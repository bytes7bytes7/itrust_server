import '../../features/common/domain/domain.dart';

abstract class CommentRepository {
  Future<void> update({required Comment comment});

  Future<Comment?> getByID({required CommentID id});

  Future<List<Comment>> getByFilter({
    required PostID postID,
    required int limit,
    CommentID? repliedTo,
    CommentID? startAfter,
  });

  Future<Comment> replyToPost({
    required String text,
    required UserID authorID,
    required PostID postID,
  });

  Future<Comment> replyToComment({
    required String text,
    required UserID authorID,
    required PostID postID,
    required CommentID replyToCommentID,
  });
}
