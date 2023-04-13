import 'dart:collection';

import 'package:injectable/injectable.dart';

import '../../features/common/application/providers/date_time_provider.dart';
import '../../features/common/domain/domain.dart';
import '../interfaces/comment_repository.dart';

@dev
@Singleton(as: CommentRepository)
class DevCommentRepository implements CommentRepository {
  DevCommentRepository({
    required DateTimeProvider dateTimeProvider,
  }) : _dateTimeProvider = dateTimeProvider;

  final DateTimeProvider _dateTimeProvider;

  final _postIDToCommentIDs = HashMap<PostID, List<CommentID>>();
  final _commentIDToReplyIDs = HashMap<CommentID, List<CommentID>>();
  final _comments = HashMap<CommentID, Comment?>();

  @override
  Future<void> update({required Comment comment}) async {
    _comments[comment.id] = comment;
  }

  @override
  Future<List<Comment>> getByFilter({
    required PostID postID,
    required int limit,
    CommentID? repliedTo,
    CommentID? startAfter,
  }) async {
    var reachStartAfter = startAfter == null;

    final commentIDs = _postIDToCommentIDs[postID];

    if (commentIDs == null) {
      return [];
    }

    if (repliedTo == null) {
      final comments = <Comment>[];

      for (final id in commentIDs) {
        if (reachStartAfter) {
          // TODO: what if comment has been deleted?
          comments.add(_comments[id]!);
        } else if (id == startAfter) {
          reachStartAfter = true;
        }
      }

      return comments;
    }

    final replyIDs = _commentIDToReplyIDs[repliedTo];

    if (replyIDs == null) {
      return [];
    }

    final replies = <Comment>[];

    for (final id in replyIDs) {
      if (reachStartAfter) {
        // TODO: what if comment has been deleted?
        replies.add(_comments[id]!);
      } else if (id == startAfter) {
        reachStartAfter = true;
      }
    }

    return replies;
  }

  @override
  Future<Comment?> getByID({required CommentID id}) async {
    return _comments[id];
  }

  @override
  Future<Comment> replyToPost({
    required String text,
    required UserID authorID,
    required PostID postID,
  }) async {
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

    final commentIDs = (_postIDToCommentIDs[postID] ?? <CommentID>[])..add(id);
    _postIDToCommentIDs[postID] = commentIDs;

    return comment;
  }

  @override
  Future<Comment> replyToComment({
    required String text,
    required UserID authorID,
    required PostID postID,
    required CommentID replyToCommentID,
  }) async {
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
      replyToID: replyToCommentID,
    );

    _comments[id] = comment;

    final replyIDs = (_commentIDToReplyIDs[replyToCommentID] ?? <CommentID>[])
      ..add(id);
    _commentIDToReplyIDs[replyToCommentID] = replyIDs;

    return comment;
  }
}
