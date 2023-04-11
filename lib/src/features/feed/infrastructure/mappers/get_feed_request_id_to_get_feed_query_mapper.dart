import 'package:mapster/mapster.dart';

import '../../../common/domain/domain.dart';
import '../../application/application.dart';
import '../../domain/domain.dart';
import '../../presentation/contracts/contracts.dart';

class GetFeedRequestIDToGetFeedQueryMapper
    extends TwoSourcesMapper<GetFeedRequest, UserID, GetFeedQuery> {
  GetFeedRequestIDToGetFeedQueryMapper(super.input);

  @override
  GetFeedQuery map() {
    return GetFeedQuery(
      userID: _userID,
      lastPostID: PostID.fromString(_request.lastPostID),
    );
  }

  GetFeedRequest get _request => source1;

  UserID get _userID => source2;
}
