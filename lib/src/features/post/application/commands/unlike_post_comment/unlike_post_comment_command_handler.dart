import 'dart:async';

import 'package:fpdart/fpdart.dart';
import 'package:injectable/injectable.dart';
import 'package:mapster/mapster.dart';
import 'package:mediator/mediator.dart';

import '../../../../../repositories/interfaces/interfaces.dart';
import '../../../../common/application/exceptions/exceptions.dart';
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

    final index = comment.likedByIDs.indexOf(request.userID);

    if (index == -1) {
      return left(
        [const YouNotLikedCommentYet()],
      );
    }

    final updatedComment = comment.copyWith(
      likedByIDs: List.of(comment.likedByIDs)..removeAt(index),
    );

    await _postRepository.updateComment(comment: updatedComment);

    return right(
      PostCommentResult(
        comment: _mapster.map2(updatedComment, request.userID, To<CommentVM>()),
      ),
    );
  }
}
