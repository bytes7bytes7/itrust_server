import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../../utils/typedef.dart';
import '../json_keys.dart';

part 'get_post_comment_request.g.dart';

@JsonSerializable()
class GetPostCommentRequest {
  const GetPostCommentRequest({
    required this.postID,
    required this.commentID,
  });

  @JsonKey(name: postIDKey)
  final String postID;

  @JsonKey(name: commentIDKey)
  final String commentID;

  factory GetPostCommentRequest.fromJson(JsonMap json) =>
      _$GetPostCommentRequestFromJson(json);

  JsonMap toJson() => _$GetPostCommentRequestToJson(this);
}
