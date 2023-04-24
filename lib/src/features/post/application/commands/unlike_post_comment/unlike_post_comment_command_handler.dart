import 'dart:async';

import 'package:fpdart/fpdart.dart';
import 'package:injectable/injectable.dart';
import 'package:mapster/mapster.dart';
import 'package:mediator/mediator.dart';

import '../../../../../repositories/interfaces/interfaces.dart';
import '../../../../common/application/exceptions/exceptions.dart';
import '../../../../common/application/mapper_dto/to_comment_vm.dart';
import '../../../../common/application/view_models/comment_vm/comment_vm.dart';
import '../../common/common.dart';
import 'unlike_post_comment_command.dart';

@singleton
class UnlikePostCommentCommandHandler extends RequestHandler<
    UnlikePostCommentCommand,
    Either<List<DetailedException>, PostCommentResult>> {
  const UnlikePostCommentCommandHandler({
    required PostRepository postRepository,
    required Mapster mapster,
  })  : _postRepository = postRepository,
        _mapster = mapster;

  final PostRepository _postRepository;
  final Mapster _mapster;

  @override
  FutureOr<Either<List<DetailedException>, PostCommentResult>> handle(
    UnlikePostCommentCommand request,
  ) async {
    final post = await _postRepository.getPostByID(id: request.postID);

    if (post == null) {
      return left(
        [const PostNotFound()],
      );
    }

    final comment = await _postRepository.getCommentByID(
      postID: request.postID,
      commentID: request.commentID,
    );

    if (comment == null) {
      return left(
        [const CommentNotFound()],
      );
    }

    final isAlreadyLikedByMe = await _postRepository.isCommentLikedByUser(
      postID: request.postID,
      commentID: request.commentID,
      userID: request.userID,
    );

    if (!isAlreadyLikedByMe) {
      return left(
        [const YouNotLikedCommentYet()],
      );
    }

    await _postRepository.unlikeComment(
      postID: request.postID,
      commentID: request.commentID,
      userID: request.userID,
    );

    final likedByMe = await _postRepository.isCommentLikedByUser(
      postID: request.postID,
      commentID: comment.id,
      userID: request.userID,
    );

    final likesAmount = await _postRepository.getCommentLikesAmount(
      postID: request.postID,
      commentID: comment.id,
    );

    final repliesAmount = await _postRepository.getCommentRepliesAmount(
      postID: request.postID,
      commentID: comment.id,
    );

    return right(
      PostCommentResult(
        comment: _mapster.map2(
          comment,
          ToCommentVM(
            likedByMe: likedByMe,
            likesAmount: likesAmount,
            repliesAmount: repliesAmount,
          ),
          To<CommentVM>(),
        ),
      ),
    );
  }
}
