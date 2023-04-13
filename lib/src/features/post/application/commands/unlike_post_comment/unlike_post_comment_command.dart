import 'package:fpdart/fpdart.dart';
import 'package:mediator/mediator.dart';

import '../../../../common/application/exceptions/detailed_exception.dart';
import '../../../../common/domain/domain.dart';
import '../../common/common.dart';

class UnlikePostCommentCommand
    extends Request<Either<List<DetailedException>, PostCommentResult>> {
  UnlikePostCommentCommand({
    required this.userID,
    required this.postID,
    required this.commentID,
  }) : super(UnlikePostCommentCommand);

  final UserID userID;
  final PostID postID;
  final CommentID commentID;
}
