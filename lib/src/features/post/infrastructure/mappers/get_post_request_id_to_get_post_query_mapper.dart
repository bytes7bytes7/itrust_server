import 'package:mapster/mapster.dart';

import '../../../common/domain/domain.dart';
import '../../application/queries/get_post/get_post.dart';
import '../../presentation/contracts/contracts.dart';

class GetPostRequestIDToGetPostQueryMapper
    extends TwoSourcesMapper<GetPostRequest, UserID, GetPostQuery> {
  GetPostRequestIDToGetPostQueryMapper(super.input);

  @override
  GetPostQuery map() {
    return GetPostQuery(
      userID: _userID,
      postID: PostID.fromString(_request.id),
    );
  }

  GetPostRequest get _request => source1;

  UserID get _userID => source2;
}
