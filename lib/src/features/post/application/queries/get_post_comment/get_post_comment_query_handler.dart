import 'dart:async';

import 'package:fpdart/fpdart.dart';
import 'package:injectable/injectable.dart';
import 'package:mapster/mapster.dart';
import 'package:mediator/mediator.dart';

import '../../../../../repositories/interfaces/interfaces.dart';
import '../../../../common/application/exceptions/exceptions.dart';
import '../../../../common/application/view_models/comment_vm/comment_vm.dart';
import '../../common/common.dart';
import 'get_post_comment_query.dart';

@singleton
class GetPostCommentQueryHandler extends RequestHandler<GetPostCommentQuery,
    Either<List<DetailedException>, PostCommentResult>> {
  const GetPostCommentQueryHandler({
    required PostRepository postRepository,
    required Mapster mapster,
  })  : _postRepository = postRepository,
        _mapster = mapster;

  final PostRepository _postRepository;
  final Mapster _mapster;

  @override
  FutureOr<Either<List<DetailedException>, PostCommentResult>> handle(
    GetPostCommentQuery request,
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

    return right(
      PostCommentResult(
        comment: _mapster.map2(comment, request.userID, To<CommentVM>()),
      ),
    );
  }
}
