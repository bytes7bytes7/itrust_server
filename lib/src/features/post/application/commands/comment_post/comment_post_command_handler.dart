import 'dart:async';

import 'package:fpdart/fpdart.dart';
import 'package:injectable/injectable.dart';
import 'package:mapster/mapster.dart';
import 'package:mediator/mediator.dart';

import '../../../../../repositories/interfaces/interfaces.dart';
import '../../../../common/application/exceptions/exceptions.dart';
import '../../../../common/application/view_models/comment_vm/comment_vm.dart';
import '../../../../common/domain/domain.dart';
import '../../common/common.dart';
import 'comment_post_command.dart';

@singleton
class CommentPostCommandHandler extends RequestHandler<CommentPostCommand,
    Either<List<DetailedException>, PostCommentResult>> {
  const CommentPostCommandHandler({
    required PostRepository postRepository,
    required CommentRepository commentRepository,
    required Mapster mapster,
  })  : _postRepository = postRepository,
        _commentRepository = commentRepository,
        _mapster = mapster;

  final PostRepository _postRepository;
  final CommentRepository _commentRepository;
  final Mapster _mapster;

  @override
  FutureOr<Either<List<DetailedException>, PostCommentResult>> handle(
    CommentPostCommand request,
  ) async {
    final post = await _postRepository.getByID(id: request.postID);

    if (post == null) {
      return left(
        [const PostNotFound()],
      );
    }

    late Comment comment;
    final repliedTo = request.repliedTo;
    if (repliedTo != null) {
      final reply = await _commentRepository.getByID(id: repliedTo);

      if (reply == null) {
        return left(
          [const CommentNotFound()],
        );
      }

      comment = await _commentRepository.replyToComment(
        text: request.text,
        authorID: request.userID,
        postID: request.postID,
        replyToCommentID: repliedTo,
      );
    } else {
      comment = await _commentRepository.replyToPost(
        text: request.text,
        authorID: request.userID,
        postID: request.postID,
      );
    }

    return right(
      PostCommentResult(
        comment: _mapster.map2(comment, request.userID, To<CommentVM>()),
      ),
    );
  }
}
