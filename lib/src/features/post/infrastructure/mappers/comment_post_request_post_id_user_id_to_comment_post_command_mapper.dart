import 'package:mapster/mapster.dart';

import '../../../common/domain/domain.dart';
import '../../application/commands/commands.dart';
import '../../presentation/contracts/comment_post_request/comment_post_request.dart';

class CommentPostRequestPostIDUseIDToCommentPostCommandMapper
    extends ThreeSourcesMapper<CommentPostRequest, String, UserID,
        CommentPostCommand> {
  CommentPostRequestPostIDUseIDToCommentPostCommandMapper(super.input);

  @override
  CommentPostCommand map() {
    final repliedTo = _request.repliedToCommentID;

    return CommentPostCommand(
      userID: _userID,
      postID: PostID.fromString(_postID),
      text: _request.text,
      repliedTo: repliedTo != null ? CommentID.fromString(repliedTo) : null,
    );
  }

  CommentPostRequest get _request => source1;

  String get _postID => source2;

  UserID get _userID => source3;
}
