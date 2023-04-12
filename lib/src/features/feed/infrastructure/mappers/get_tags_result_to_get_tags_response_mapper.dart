import 'package:mapster/mapster.dart';

import '../../application/common/common.dart';
import '../../presentation/contracts/contracts.dart';

class GetTagsResultToGetTagsResponseMapper
    extends OneSourceMapper<GetTagsResult, GetTagsResponse> {
  GetTagsResultToGetTagsResponseMapper(super.input);

  @override
  GetTagsResponse map() {
    return GetTagsResponse(
      tags: _result.tags,
    );
  }

  GetTagsResult get _result => source;
}
