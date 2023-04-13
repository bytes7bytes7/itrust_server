import 'package:fpdart/fpdart.dart';
import 'package:mediator/mediator.dart';

import '../../../../common/application/exceptions/detailed_exception.dart';
import '../../../../common/domain/domain.dart';
import '../../common/common.dart';

class GetPostCommentQuery
    extends Request<Either<List<DetailedException>, PostCommentResult>> {
  GetPostCommentQuery({
    required this.userID,
    required this.postID,
    required this.commentID,
  }) : super(GetPostCommentQuery);

  final UserID userID;
  final PostID postID;
  final CommentID commentID;
}
