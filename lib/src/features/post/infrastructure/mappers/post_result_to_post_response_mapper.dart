import 'package:mapster/mapster.dart';

import '../../application/common/common.dart';
import '../../presentation/contracts/contracts.dart';

class PostResultToPostResponseMapper
    extends OneSourceMapper<PostResult, PostResponse> {
  PostResultToPostResponseMapper(super.input);

  @override
  PostResponse map() {
    return PostResponse(
      post: _result.post,
    );
  }

  PostResult get _result => source;
}
