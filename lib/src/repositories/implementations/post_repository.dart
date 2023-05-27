import 'dart:collection';

import 'package:injectable/injectable.dart';

import '../../features/common/application/providers/date_time_provider.dart';
import '../../features/common/domain/domain.dart';
import '../../features/post/application/dto/dto.dart';
import '../interfaces/end_user_repository.dart';
import '../interfaces/media_repository.dart';
import '../interfaces/post_repository.dart';

@dev
@Singleton(as: PostRepository)
class DevPostRepository implements PostRepository {
  DevPostRepository({
    required DateTimeProvider dateTimeProvider,
    required MediaRepository mediaRepository,
    required EndUserRepository endUserRepository,
  })  : _dateTimeProvider = dateTimeProvider,
        _mediaRepository = mediaRepository,
        _endUserRepository = endUserRepository;

  // Key's type is `Post?` to be able to book ID for new Post
  final _postOrder = <PostID>[];
  final _posts = HashMap<PostID, Post?>();
  final _comments = HashMap<CommentID, Comment?>();
  final _postLikedByIDs = HashMap<PostID, List<UserID>>();
  final _postCommentIDs = HashMap<PostID, List<CommentID>>();
  final _commentLikedByIDs = HashMap<CommentID, List<UserID>>();
  final _commentReplyIDs = HashMap<CommentID, List<CommentID>>();
  final _userPosts = HashMap<UserID, List<PostID>>();

  final DateTimeProvider _dateTimeProvider;
  final MediaRepository _mediaRepository;
  final EndUserRepository _endUserRepository;

  @override
  Future<Post> createPost({
    required NewPost newPost,
    required UserID authorID,
  }) async {
    late PostID id;
    do {
      id = PostID.generate();
    } while (_posts.keys.contains(id));

    // book ID
    _posts[id] = null;

    final mediaIDs = <MediaID>[];

    for (final newMedia in newPost.media) {
      final media = await _mediaRepository.add(newMedia);

      mediaIDs.add(media.id);
    }

    final post = Post(
      id: id,
      authorID: authorID,
      text: newPost.text,
      createdAt: _dateTimeProvider.nowUtc(),
      mediaIDs: mediaIDs,
      tags: newPost.tags,
    );

    _posts[id] = post;
    _postOrder.insert(0, id);

    final posts = List.of(_userPosts[authorID] ?? <PostID>[])..add(id);
    _userPosts[authorID] = posts;

    return post;
  }

  @override
  Future<void> updatePost({required Post post}) async {
    _posts[post.id] = post;
  }

  @override
  Future<Post?> getPostByID({required PostID id}) async {
    return _posts[id];
  }

  @override
  Future<int> getUserPostsAmount({required UserID userID}) async {
    final posts = _userPosts[userID] ?? [];

    return posts.length;
  }

  @override
  Future<int> getPostLikesAmount({required PostID id}) async {
    final post = _posts[id];

    if (post == null) {
      throw Exception('Post not found');
    }

    final likes = _postLikedByIDs[id] ?? [];

    return likes.length;
  }

  @override
  Future<void> likePost({
    required PostID postID,
    required UserID userID,
  }) async {
    final post = _posts[postID];

    if (post == null) {
      throw Exception('Post not found');
    }

    final likes = List.of(_postLikedByIDs[postID] ?? <UserID>[]);

    final isLiked = likes.contains(userID);

    if (isLiked) {
      throw Exception('Post is already liked');
    }

    likes.add(userID);
    _postLikedByIDs[postID] = likes;
  }

  @override
  Future<void> unlikePost({
    required PostID postID,
    required UserID userID,
  }) async {
    final post = _posts[postID];

    if (post == null) {
      throw Exception('Post not found');
    }

    final likes = List.of(_postLikedByIDs[postID] ?? <UserID>[]);

    final isLiked = likes.contains(userID);

    if (!isLiked) {
      throw Exception('Post is already unliked');
    }

    likes.remove(userID);
    _postLikedByIDs[postID] = likes;
  }

  @override
  Future<bool> isPostLikedByUser({
    required PostID postID,
    required UserID userID,
  }) async {
    final post = _posts[postID];

    if (post == null) {
      throw Exception('Post not found');
    }

    final likes = _postLikedByIDs[postID] ?? [];

    return likes.contains(userID);
  }

  @override
  Future<int> getPostCommentsAmount({required PostID id}) async {
    final post = _posts[id];

    if (post == null) {
      throw Exception('Post not found');
    }

    final comments = _postCommentIDs[id] ?? [];

    return comments.length;
  }

  @override
  Future<List<Post>> getFeedByFilter({
    required UserID forUser,
    required int limit,
    PostID? startAfter,
  }) async {
    final result = <Post>[];

    var reachStartAster = startAfter == null;

    for (final id in _postOrder) {
      final post = _posts[id];

      // booked place
      if (post == null) {
        continue;
      }

      final isFriend = await _endUserRepository.isFriend(
        firstUserID: forUser,
        secondUserID: post.authorID,
      );

      if (isFriend) {
        if (reachStartAster) {
          result.add(post);
        } else if (post.id == startAfter) {
          reachStartAster = true;
        }
      }

      if (result.length == limit) {
        break;
      }
    }

    return result;
  }

  @override
  Future<List<Post>> getPostsByFilter({
    required int limit,
    required UserID byUser,
    PostID? startAfter,
  }) async {
    final result = <Post>[];

    var reachStartAster = startAfter == null;

    for (final id in _postOrder) {
      final post = _posts[id];

      // booked place
      if (post == null) {
        continue;
      }

      if (byUser == post.authorID) {
        if (reachStartAster) {
          result.add(post);
        } else if (post.id == startAfter) {
          reachStartAster = true;
        }
      }

      if (result.length == limit) {
        break;
      }
    }

    return result;
  }

  @override
  Future<void> updateComment({required Comment comment}) async {
    _comments[comment.id] = comment;
  }

  @override
  Future<Comment?> getCommentByID({
    required PostID postID,
    required CommentID commentID,
  }) async {
    final comment = _comments[commentID];

    if (comment == null) {
      return null;
    }

    if (comment.postID != postID) {
      return null;
    }

    return comment;
  }

  @override
  Future<int> getCommentLikesAmount({
    required PostID postID,
    required CommentID commentID,
  }) async {
    final post = _posts[postID];

    if (post == null) {
      throw Exception('Post not found');
    }

    final comment = _comments[commentID];

    if (comment == null) {
      throw Exception('Comment not found');
    }

    if (comment.postID != post.id) {
      throw Exception('Comment not found');
    }

    final likes = _commentLikedByIDs[commentID] ?? [];

    return likes.length;
  }

  @override
  Future<bool> isCommentLikedByUser({
    required PostID postID,
    required CommentID commentID,
    required UserID userID,
  }) async {
    final post = _posts[postID];

    if (post == null) {
      throw Exception('Post not found');
    }

    final comment = _comments[commentID];

    if (comment == null) {
      throw Exception('Comment not found');
    }

    if (comment.postID != post.id) {
      throw Exception('Comment not found');
    }

    final likes = _commentLikedByIDs[commentID] ?? [];

    return likes.contains(userID);
  }

  @override
  Future<void> likeComment({
    required PostID postID,
    required CommentID commentID,
    required UserID userID,
  }) async {
    final post = _posts[postID];

    if (post == null) {
      throw Exception('Post not found');
    }

    final comment = _comments[commentID];

    if (comment == null) {
      throw Exception('Comment not found');
    }

    if (comment.postID != post.id) {
      throw Exception('Comment not found');
    }

    final likes = List.of(_commentLikedByIDs[commentID] ?? <UserID>[]);

    final isLiked = likes.contains(userID);

    if (isLiked) {
      throw Exception('Post is already liked');
    }

    likes.add(userID);
    _commentLikedByIDs[commentID] = likes;
  }

  @override
  Future<void> unlikeComment({
    required PostID postID,
    required CommentID commentID,
    required UserID userID,
  }) async {
    final post = _posts[postID];

    if (post == null) {
      throw Exception('Post not found');
    }

    final comment = _comments[commentID];

    if (comment == null) {
      throw Exception('Comment not found');
    }

    if (comment.postID != post.id) {
      throw Exception('Comment not found');
    }

    final likes = List.of(_commentLikedByIDs[commentID] ?? <UserID>[]);

    final isLiked = likes.contains(userID);

    if (!isLiked) {
      throw Exception('Post is already unliked');
    }

    likes.remove(userID);
    _commentLikedByIDs[commentID] = likes;
  }

  @override
  Future<int> getCommentRepliesAmount({
    required PostID postID,
    required CommentID commentID,
  }) async {
    final post = _posts[postID];

    if (post == null) {
      throw Exception('Post not found');
    }

    final comment = _comments[commentID];

    if (comment == null) {
      throw Exception('Comment not found');
    }

    if (comment.postID != post.id) {
      throw Exception('Comment not found');
    }

    final replies = _commentReplyIDs[commentID] ?? [];

    return replies.length;
  }

  @override
  Future<List<Comment>> getCommentsByFilter({
    required PostID postID,
    required int limit,
    CommentID? repliedTo,
    CommentID? startAfter,
  }) async {
    var reachStartAfter = startAfter == null;

    final post = _posts[postID];

    if (post == null) {
      throw Exception('Post not found');
    }

    final commentIDs = _postCommentIDs[postID] ?? [];

    if (repliedTo == null) {
      final comments = <Comment>[];

      for (final id in commentIDs) {
        if (reachStartAfter) {
          comments.add(_comments[id]!);
        } else if (id == startAfter) {
          reachStartAfter = true;
        }
      }

      return comments;
    }

    final comment = _comments[repliedTo];

    if (comment == null) {
      throw Exception('`repliedTo` comment not found');
    }

    final replyIDs = _commentReplyIDs[repliedTo] ?? [];

    final replies = <Comment>[];

    for (final id in replyIDs) {
      if (reachStartAfter) {
        replies.add(_comments[id]!);
      } else if (id == startAfter) {
        reachStartAfter = true;
      }
    }

    return replies;
  }

  @override
  Future<Comment> replyToPost({
    required String text,
    required UserID authorID,
    required PostID postID,
  }) async {
    final post = _posts[postID];

    if (post == null) {
      throw Exception('Post not found');
    }

    late CommentID id;
    do {
      id = CommentID.generate();
    } while (_comments.containsKey(id));

    // book place
    _comments[id] = null;

    final comment = Comment(
      id: id,
      authorID: authorID,
      postID: postID,
      createdAt: _dateTimeProvider.nowUtc(),
      text: text,
    );

    _comments[id] = comment;

    final commentIDs = List.of(_postCommentIDs[postID] ?? <CommentID>[])
      ..insert(0, id);
    _postCommentIDs[postID] = commentIDs;

    return comment;
  }

  @override
  Future<Comment> replyToComment({
    required String text,
    required UserID authorID,
    required PostID postID,
    required CommentID replyToCommentID,
  }) async {
    final post = _posts[postID];

    if (post == null) {
      throw Exception('Post not found');
    }

    final comment = _comments[replyToCommentID];

    if (comment == null) {
      throw Exception('Comment not found');
    }

    late CommentID id;
    do {
      id = CommentID.generate();
    } while (_comments.containsKey(id));

    // book place
    _comments[id] = null;

    final reply = Comment(
      id: id,
      authorID: authorID,
      postID: postID,
      createdAt: _dateTimeProvider.nowUtc(),
      text: text,
      replyToID: replyToCommentID,
    );

    _comments[id] = reply;

    final replyIDs =
        List.of(_commentReplyIDs[replyToCommentID] ?? <CommentID>[])
          ..insert(0, id);
    _commentReplyIDs[replyToCommentID] = replyIDs;

    return reply;
  }
}
