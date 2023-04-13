import 'dart:async';

import 'package:fpdart/fpdart.dart';
import 'package:injectable/injectable.dart';
import 'package:mapster/mapster.dart';
import 'package:mediator/mediator.dart';

import '../../../../../repositories/interfaces/interfaces.dart';
import '../../../../common/application/exceptions/exceptions.dart';
import '../../../../common/application/view_models/comment_vm/comment_vm.dart';
import '../../common/common.dart';
import 'get_post_comments_query.dart';

const _limit = 5;

@singleton
class GetPostCommentsQueryHandler extends RequestHandler<GetPostCommentsQuery,
    Either<List<DetailedException>, PostCommentsResult>> {
  const GetPostCommentsQueryHandler({
    required PostRepository postRepository,
    required Mapster mapster,
  })  : _postRepository = postRepository,
        _mapster = mapster;

  final PostRepository _postRepository;
  final Mapster _mapster;

  @override
  FutureOr<Either<List<DetailedException>, PostCommentsResult>> handle(
    GetPostCommentsQuery request,
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
    }

    final comments = await _postRepository.getCommentsByFilter(
      postID: request.postID,
      limit: _limit,
      startAfter: request.lastCommentID,
      repliedTo: request.repliedTo,
    );

    return right(
      PostCommentsResult(
        comments: comments
            .map((e) => _mapster.map2(e, request.userID, To<CommentVM>()))
            .toList(),
      ),
    );
  }
}
