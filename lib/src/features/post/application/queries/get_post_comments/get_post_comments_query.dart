import 'package:fpdart/fpdart.dart';
import 'package:mediator/mediator.dart';

import '../../../../common/application/exceptions/detailed_exception.dart';
import '../../../../common/domain/domain.dart';
import '../../common/common.dart';

class GetPostCommentsQuery
    extends Request<Either<List<DetailedException>, PostCommentsResult>> {
  GetPostCommentsQuery({
    required this.userID,
    required this.postID,
    required this.lastCommentID,
    required this.repliedTo,
  }) : super(GetPostCommentsQuery);

  final UserID userID;
  final PostID postID;
  final CommentID? lastCommentID;
  final CommentID? repliedTo;
}
