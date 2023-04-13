import 'package:fpdart/fpdart.dart';
import 'package:mediator/mediator.dart';

import '../../../../common/application/exceptions/detailed_exception.dart';
import '../../../../common/domain/domain.dart';
import '../../common/common.dart';

class CommentPostCommand
    extends Request<Either<List<DetailedException>, PostCommentResult>> {
  CommentPostCommand({
    required this.userID,
    required this.postID,
    required this.text,
    required this.repliedTo,
  }) : super(CommentPostCommand);

  final UserID userID;
  final PostID postID;
  final String text;
  final CommentID? repliedTo;
}
