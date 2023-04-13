import '../../features/common/domain/domain.dart';
import '../../features/post/application/dto/dto.dart';

abstract class PostRepository {
  Future<Post> createPost({
    required NewPost newPost,
    required UserID authorID,
  });

  Future<void> updatePost({required Post post});

  Future<Post?> getPostByID({required PostID id});

  Future<List<Post>> getPostsByFilter({
    required int limit,
    List<UserID> byUsers = const [],
    bool byAllUsers = false,
    PostID? startAfter,
  });

  Future<void> updateComment({required Comment comment});

  Future<Comment?> getCommentByID({
    required PostID postID,
    required CommentID commentID,
  });

  Future<List<Comment>> getCommentsByFilter({
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
