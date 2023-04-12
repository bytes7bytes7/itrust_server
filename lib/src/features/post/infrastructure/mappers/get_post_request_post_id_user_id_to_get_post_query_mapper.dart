import 'package:mapster/mapster.dart';

import '../../../common/domain/domain.dart';
import '../../application/queries/get_post/get_post.dart';
import '../../presentation/contracts/contracts.dart';

class GetPostRequestPostIDUserIDToGetPostQueryMapper
    extends ThreeSourcesMapper<GetPostRequest, String, UserID, GetPostQuery> {
  GetPostRequestPostIDUserIDToGetPostQueryMapper(super.input);

  @override
  GetPostQuery map() {
    return GetPostQuery(
      userID: _userID,
      postID: PostID.fromString(_postID),
    );
  }

  String get _postID => source2;

  UserID get _userID => source3;
}
