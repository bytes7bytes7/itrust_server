import 'package:mapster/mapster.dart';

import '../../../common/domain/domain.dart';
import '../../application/queries/get_post_comments/get_post_comments.dart';
import '../../presentation/contracts/contracts.dart';

class GetPostCommentsRequestToGetPostCommentsQueryMapper
    extends TwoSourcesMapper<GetPostCommentsRequest, UserID,
        GetPostCommentsQuery> {
  GetPostCommentsRequestToGetPostCommentsQueryMapper(super.input);

  @override
  GetPostCommentsQuery map() {
    final lastCommentID = _request.lastCommentID;
    final repliedTo = _request.repliedToCommentID;

    return GetPostCommentsQuery(
      userID: _userID,
      postID: PostID.fromString(_request.postID),
      lastCommentID:
          lastCommentID != null ? CommentID.fromString(lastCommentID) : null,
      repliedTo: repliedTo != null ? CommentID.fromString(repliedTo) : null,
    );
  }

  GetPostCommentsRequest get _request => source1;

  UserID get _userID => source2;
}
