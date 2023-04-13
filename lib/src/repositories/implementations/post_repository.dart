import 'dart:collection';

import 'package:injectable/injectable.dart';

import '../../features/common/application/providers/date_time_provider.dart';
import '../../features/common/domain/domain.dart';
import '../../features/post/application/dto/dto.dart';
import '../interfaces/media_repository.dart';
import '../interfaces/post_repository.dart';

@dev
@Singleton(as: PostRepository)
class DevPostRepository implements PostRepository {
  DevPostRepository({
    required DateTimeProvider dateTimeProvider,
    required MediaRepository mediaRepository,
  })  : _dateTimeProvider = dateTimeProvider,
        _mediaRepository = mediaRepository;

  // Key's type is `Post?` to be able to book ID for new Post
  final _posts = HashMap<PostID, Post?>();
  final _comments = HashMap<CommentID, Comment?>();

  final DateTimeProvider _dateTimeProvider;
  final MediaRepository _mediaRepository;

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
      commentIDs: const [],
      likedByIDs: const [],
      mediaIDs: mediaIDs,
      tags: newPost.tags,
    );

    _posts[id] = post;

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
  Future<List<Post>> getPostsByFilter({
    required int limit,
    List<UserID> byUsers = const [],
    bool byAllUsers = false,
    PostID? startAfter,
  }) async {
    final result = <Post>[];

    var reachStartAster = startAfter == null;

    for (final post in _posts.values) {
      // booked place
      if (post == null) {
        continue;
      }

      if (byAllUsers || byUsers.contains(post.authorID)) {
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
  Future<List<Comment>> getCommentsByFilter({
    required PostID postID,
    required int limit,
    CommentID? repliedTo,
    CommentID? startAfter,
  }) async {
    var reachStartAfter = startAfter == null;

    final commentIDs = _posts[postID]?.commentIDs;

    if (commentIDs == null) {
      return [];
    }

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

    final replyIDs = _comments[repliedTo]?.replyIDs;

    if (replyIDs == null) {
      return [];
    }

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
      likedByIDs: [],
      replyIDs: [],
    );

    _comments[id] = comment;

    final commentIDs = List.of(post.commentIDs)..insert(0, id);
    _posts[postID] = post.copyWith(
      commentIDs: commentIDs,
    );

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
      likedByIDs: [],
      replyIDs: [],
      replyToID: replyToCommentID,
    );

    _comments[id] = reply;

    final replyIDs = List.of(comment.replyIDs)..insert(0, id);
    _comments[replyToCommentID] = comment.copyWith(
      replyIDs: replyIDs,
    );

    return reply;
  }
}
