import 'package:mapster/mapster.dart';

import '../../../common/domain/domain.dart';
import '../../application/commands/commands.dart';
import '../../presentation/contracts/contracts.dart';

class LikePostCommentRequestToLikePostCommentCommandMapper
    extends TwoSourcesMapper<LikePostCommentRequest, UserID,
        LikePostCommentCommand> {
  LikePostCommentRequestToLikePostCommentCommandMapper(super.input);

  @override
  LikePostCommentCommand map() {
    return LikePostCommentCommand(
      userID: _userID,
      postID: PostID.fromString(_request.postID),
      commentID: CommentID.fromString(_request.commentID),
    );
  }

  LikePostCommentRequest get _request => source1;

  UserID get _userID => source2;
}
