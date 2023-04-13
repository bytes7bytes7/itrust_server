import 'package:mapster/mapster.dart';

import '../../application/common/common.dart';
import '../../presentation/contracts/contracts.dart';

class PostCommentsResultToPostCommentsResponseMapper
    extends OneSourceMapper<PostCommentsResult, PostCommentsResponse> {
  PostCommentsResultToPostCommentsResponseMapper(super.input);

  @override
  PostCommentsResponse map() {
    return PostCommentsResponse(
      comments: _result.comments,
    );
  }

  PostCommentsResult get _result => source;
}
