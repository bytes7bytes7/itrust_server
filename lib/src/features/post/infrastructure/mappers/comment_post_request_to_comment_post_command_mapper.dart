import 'package:mapster/mapster.dart';

import '../../../common/domain/domain.dart';
import '../../application/commands/commands.dart';
import '../../presentation/contracts/comment_post_request/comment_post_request.dart';

class CommentPostRequestToCommentPostCommandMapper
    extends TwoSourcesMapper<CommentPostRequest, UserID, CommentPostCommand> {
  CommentPostRequestToCommentPostCommandMapper(super.input);

  @override
  CommentPostCommand map() {
    final repliedTo = _request.repliedToCommentID;

    return CommentPostCommand(
      userID: _userID,
      postID: PostID.fromString(_request.postID),
      text: _request.text,
      repliedTo: repliedTo != null ? CommentID.fromString(repliedTo) : null,
    );
  }

  CommentPostRequest get _request => source1;

  UserID get _userID => source2;
}
