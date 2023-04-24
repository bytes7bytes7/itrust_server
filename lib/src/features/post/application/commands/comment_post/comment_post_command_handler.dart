import 'dart:async';
import 'dart:collection';

import 'package:fpdart/fpdart.dart';
import 'package:injectable/injectable.dart';
import 'package:mapster/mapster.dart';
import 'package:mediator/mediator.dart';

import '../../../../../repositories/interfaces/interfaces.dart';
import '../../../../common/application/exceptions/exceptions.dart';
import '../../../../common/application/mapper_dto/to_comment_vm.dart';
import '../../../../common/application/view_models/comment_vm/comment_vm.dart';
import '../../../../common/domain/value_objects/comment_id/comment_id.dart';
import '../../common/common.dart';
import 'comment_post_command.dart';

const _limit = 5;

@singleton
class CommentPostCommandHandler extends RequestHandler<CommentPostCommand,
    Either<List<DetailedException>, PostCommentsResult>> {
  const CommentPostCommandHandler({
    required PostRepository postRepository,
    required Mapster mapster,
  })  : _postRepository = postRepository,
        _mapster = mapster;

  final PostRepository _postRepository;
  final Mapster _mapster;

  @override
  FutureOr<Either<List<DetailedException>, PostCommentsResult>> handle(
    CommentPostCommand request,
  ) async {
    final post = await _postRepository.getPostByID(id: request.postID);

    if (post == null) {
      return left(
        [const PostNotFound()],
      );
    }

    final repliedTo = request.repliedTo;
    if (repliedTo != null) {
      final reply = await _postRepository.getCommentByID(
        postID: request.postID,
        commentID: repliedTo,
      );

      if (reply == null) {
        return left(
          [const CommentNotFound()],
        );
      }

      try {
        await _postRepository.replyToComment(
          text: request.text,
          authorID: request.userID,
          postID: request.postID,
          replyToCommentID: repliedTo,
        );
      } catch (e) {
        return left(
          [const PostOrCommentNotFound()],
        );
      }
    } else {
      try {
        await _postRepository.replyToPost(
          text: request.text,
          authorID: request.userID,
          postID: request.postID,
        );
      } catch (e) {
        return left(
          [const PostNotFound()],
        );
      }
    }

    final comments = await _postRepository.getCommentsByFilter(
      limit: _limit,
      postID: request.postID,
      repliedTo: request.repliedTo,
    );

    final likedByMeMap = HashMap<CommentID, bool>();
    final likesAmountMap = HashMap<CommentID, int>();
    final repliesAmountMap = HashMap<CommentID, int>();
    for (final comment in comments) {
      final likedByMe = await _postRepository.isCommentLikedByUser(
        postID: request.postID,
        commentID: comment.id,
        userID: request.userID,
      );
      likedByMeMap[comment.id] = likedByMe;

      final likesAmount = await _postRepository.getCommentLikesAmount(
        postID: request.postID,
        commentID: comment.id,
      );
      likesAmountMap[comment.id] = likesAmount;

      final repliesAmount = await _postRepository.getCommentRepliesAmount(
        postID: request.postID,
        commentID: comment.id,
      );
      repliesAmountMap[comment.id] = repliesAmount;
    }

    return right(
      PostCommentsResult(
        comments: comments
            .map(
              (e) => _mapster.map2(
                e,
                ToCommentVM(
                  likedByMe: likedByMeMap[e.id]!,
                  likesAmount: likesAmountMap[e.id]!,
                  repliesAmount: repliesAmountMap[e.id]!,
                ),
                To<CommentVM>(),
              ),
            )
            .toList(),
      ),
    );
  }
}
