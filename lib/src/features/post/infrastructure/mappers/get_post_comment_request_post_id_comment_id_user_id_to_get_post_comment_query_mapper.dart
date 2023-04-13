import 'package:mapster/mapster.dart';

import '../../../common/domain/domain.dart';
import '../../application/queries/get_post_comment/get_post_comment.dart';
import '../../presentation/contracts/contracts.dart';

class GetPostCommentRequestPostIDCommentIDUserIDToGetPostCommentQueryMapper
    extends FourSourcesMapper<GetPostCommentRequest, String, String, UserID,
        GetPostCommentQuery> {
  GetPostCommentRequestPostIDCommentIDUserIDToGetPostCommentQueryMapper(
    super.input,
  );

  @override
  GetPostCommentQuery map() {
    return GetPostCommentQuery(
      userID: _userID,
      postID: PostID.fromString(_postID),
      commentID: CommentID.fromString(_commentID),
    );
  }

  String get _postID => source2;

  String get _commentID => source3;

  UserID get _userID => source4;
}
