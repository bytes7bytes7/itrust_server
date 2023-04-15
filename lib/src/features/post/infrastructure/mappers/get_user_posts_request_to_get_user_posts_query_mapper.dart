import 'package:mapster/mapster.dart';

import '../../../common/domain/domain.dart';
import '../../application/queries/get_user_posts/get_user_posts.dart';
import '../../presentation/contracts/contracts.dart';

class GetUserPostsRequestToGetUserPostsQueryMapper
    extends TwoSourcesMapper<GetUserPostsRequest, UserID, GetUserPostsQuery> {
  GetUserPostsRequestToGetUserPostsQueryMapper(super.input);

  @override
  GetUserPostsQuery map() {
    final lastPostID = _request.lastPostID;

    return GetUserPostsQuery(
      userID: _userID,
      byUserID: UserID.fromString(_request.byUserID),
      lastPostID: lastPostID != null ? PostID.fromString(lastPostID) : null,
    );
  }

  GetUserPostsRequest get _request => source1;

  UserID get _userID => source2;
}
