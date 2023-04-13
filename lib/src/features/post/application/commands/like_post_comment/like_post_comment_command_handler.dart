import 'dart:async';

import 'package:fpdart/fpdart.dart';
import 'package:injectable/injectable.dart';
import 'package:mapster/mapster.dart';
import 'package:mediator/mediator.dart';

import '../../../../../repositories/interfaces/interfaces.dart';
import '../../../../common/application/exceptions/exceptions.dart';
import '../../../../common/application/view_models/comment_vm/comment_vm.dart';
import '../../common/common.dart';
import 'like_post_comment_command.dart';

@singleton
class LikePostCommentCommandHandler extends RequestHandler<
    LikePostCommentCommand,
    Either<List<DetailedException>, PostCommentResult>> {
  const LikePostCommentCommandHandler({
    required PostRepository postRepository,
    required Mapster mapster,
  })  : _postRepository = postRepository,
        _mapster = mapster;

  final PostRepository _postRepository;
  final Mapster _mapster;

  @override
  FutureOr<Either<List<DetailedException>, PostCommentResult>> handle(
    LikePostCommentCommand request,
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

    if (comment.likedByIDs.contains(request.userID)) {
      return left(
        [const YouAlreadyLikedComment()],
      );
    }

    final updatedComment = comment.copyWith(
      likedByIDs: List.of(post.likedByIDs)..add(request.userID),
    );

    await _postRepository.updateComment(comment: updatedComment);

    return right(
      PostCommentResult(
        comment: _mapster.map2(updatedComment, request.userID, To<CommentVM>()),
      ),
    );
  }
}
