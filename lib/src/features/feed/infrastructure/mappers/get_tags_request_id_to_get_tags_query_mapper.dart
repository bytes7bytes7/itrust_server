import 'package:mapster/mapster.dart';

import '../../../common/domain/domain.dart';
import '../../application/queries/get_tags/get_tags.dart';
import '../../presentation/contracts/contracts.dart';

class GetTagsRequestIDToGetTagsQueryMapper
    extends TwoSourcesMapper<GetTagsRequest, UserID, GetTagsQuery> {
  GetTagsRequestIDToGetTagsQueryMapper(super.input);

  @override
  GetTagsQuery map() {
    return GetTagsQuery(
      userID: _userID,
    );
  }

  UserID get _userID => source2;
}
