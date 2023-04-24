import '../../features/common/domain/domain.dart';
import '../../features/post/application/dto/dto.dart';

abstract class PostRepository {
  Future<Post> createPost({
    required NewPost newPost,
    required UserID authorID,
  });

  Future<void> updatePost({required Post post});

  Future<Post?> getPostByID({required PostID id});

  Future<int> getUserPostsAmount({required UserID userID});

  Future<int> getPostLikesAmount({required PostID id});

  Future<bool> isPostLikedByUser({
    required PostID postID,
    required UserID userID,
  });

  Future<void> likePost({
    required PostID postID,
    required UserID userID,
  });

  Future<void> unlikePost({
    required PostID postID,
    required UserID userID,
  });

  Future<int> getPostCommentsAmount({required PostID id});

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

  Future<int> getCommentLikesAmount({
    required PostID postID,
    required CommentID commentID,
  });

  Future<bool> isCommentLikedByUser({
    required PostID postID,
    required CommentID commentID,
    required UserID userID,
  });

  Future<void> likeComment({
    required PostID postID,
    required CommentID commentID,
    required UserID userID,
  });

  Future<void> unlikeComment({
    required PostID postID,
    required CommentID commentID,
    required UserID userID,
  });

  Future<int> getCommentRepliesAmount({
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
