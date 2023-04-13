import 'package:fpdart/fpdart.dart';
import 'package:mediator/mediator.dart';

import '../../../../common/application/exceptions/detailed_exception.dart';
import '../../../../common/domain/domain.dart';
import '../../common/common.dart';

class LikePostCommentCommand
    extends Request<Either<List<DetailedException>, PostCommentResult>> {
  LikePostCommentCommand({
    required this.userID,
    required this.postID,
    required this.commentID,
  }) : super(LikePostCommentCommand);

  final UserID userID;
  final PostID postID;
  final CommentID commentID;
}
