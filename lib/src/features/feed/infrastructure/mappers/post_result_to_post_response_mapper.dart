import 'package:mapster/mapster.dart';

import '../../application/application.dart';
import '../../presentation/contracts/post_response/post_response.dart';

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
