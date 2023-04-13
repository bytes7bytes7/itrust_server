import 'package:mapster/mapster.dart';

import '../../application/common/common.dart';
import '../../presentation/contracts/contracts.dart';

class PostCommentResultToPostCommentResponseMapper
    extends OneSourceMapper<PostCommentResult, PostCommentResponse> {
  PostCommentResultToPostCommentResponseMapper(super.input);

  @override
  PostCommentResponse map() {
    return PostCommentResponse(
      comment: _result.comment,
    );
  }

  PostCommentResult get _result => source;
}
