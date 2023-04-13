import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../../utils/typedef.dart';

part 'get_post_comment_request.g.dart';

@JsonSerializable()
class GetPostCommentRequest {
  const GetPostCommentRequest();

  factory GetPostCommentRequest.fromJson(JsonMap json) =>
      _$GetPostCommentRequestFromJson(json);

  JsonMap toJson() => _$GetPostCommentRequestToJson(this);
}
