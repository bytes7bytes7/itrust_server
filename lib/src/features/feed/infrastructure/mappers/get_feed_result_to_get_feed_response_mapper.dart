import 'package:mapster/mapster.dart';

import '../../application/common/common.dart';
import '../../presentation/contracts/contracts.dart';

class GetFeedResultToGetFeedResponseMapper
    extends OneSourceMapper<GetFeedResult, GetFeedResponse> {
  GetFeedResultToGetFeedResponseMapper(super.input);

  @override
  GetFeedResponse map() {
    return GetFeedResponse(
      posts: _result.posts,
    );
  }

  GetFeedResult get _result => source;
}
