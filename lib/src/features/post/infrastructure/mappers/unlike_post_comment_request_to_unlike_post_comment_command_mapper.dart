import 'package:mapster/mapster.dart';

import '../../../common/domain/domain.dart';
import '../../application/commands/commands.dart';
import '../../presentation/contracts/contracts.dart';

class UnlikePostCommentRequestToUnlikePostCommentCommandMapper
    extends TwoSourcesMapper<UnlikePostCommentRequest, UserID,
        UnlikePostCommentCommand> {
  UnlikePostCommentRequestToUnlikePostCommentCommandMapper(super.input);

  @override
  UnlikePostCommentCommand map() {
    return UnlikePostCommentCommand(
      userID: _userID,
      postID: PostID.fromString(_request.postID),
      commentID: CommentID.fromString(_request.commentID),
    );
  }

  UnlikePostCommentRequest get _request => source1;

  UserID get _userID => source2;
}
