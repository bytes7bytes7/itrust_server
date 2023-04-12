import 'package:mapster/mapster.dart';

import '../../../common/domain/domain.dart';
import '../../application/application.dart';
import '../../presentation/contracts/contracts.dart';

class GetFeedRequestIDToGetFeedQueryMapper
    extends TwoSourcesMapper<GetFeedRequest, UserID, GetFeedQuery> {
  GetFeedRequestIDToGetFeedQueryMapper(super.input);

  @override
  GetFeedQuery map() {
    final lastPostID = _request.lastPostID;

    return GetFeedQuery(
      userID: _userID,
      lastPostID: lastPostID != null ? PostID.fromString(lastPostID) : null,
    );
  }

  GetFeedRequest get _request => source1;

  UserID get _userID => source2;
}
