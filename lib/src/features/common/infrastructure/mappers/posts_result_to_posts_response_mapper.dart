import 'package:mapster/mapster.dart';

import '../../application/common/common.dart';
import '../../presentation/contracts/contracts.dart';

class PostsResultToPostsResponseMapper
    extends OneSourceMapper<PostsResult, PostsResponse> {
  PostsResultToPostsResponseMapper(super.input);

  @override
  PostsResponse map() {
    return PostsResponse(
      posts: _result.posts,
    );
  }

  PostsResult get _result => source;
}
