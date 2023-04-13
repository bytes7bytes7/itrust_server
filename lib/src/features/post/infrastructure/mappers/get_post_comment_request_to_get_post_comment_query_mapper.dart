import 'package:mapster/mapster.dart';

import '../../../common/domain/domain.dart';
import '../../application/queries/get_post_comment/get_post_comment.dart';
import '../../presentation/contracts/contracts.dart';

class GetPostCommentRequestToGetPostCommentQueryMapper extends TwoSourcesMapper<
    GetPostCommentRequest, UserID, GetPostCommentQuery> {
  GetPostCommentRequestToGetPostCommentQueryMapper(
    super.input,
  );

  @override
  GetPostCommentQuery map() {
    return GetPostCommentQuery(
      userID: _userID,
      postID: PostID.fromString(_request.postID),
      commentID: CommentID.fromString(_request.commentID),
    );
  }

  GetPostCommentRequest get _request => source1;

  UserID get _userID => source2;
}
