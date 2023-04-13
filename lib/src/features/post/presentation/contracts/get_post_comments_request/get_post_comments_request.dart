import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../../utils/typedef.dart';
import '../json_keys.dart';

part 'get_post_comments_request.g.dart';

@JsonSerializable()
class GetPostCommentsRequest {
  const GetPostCommentsRequest({
    required this.postID,
    required this.lastCommentID,
    required this.repliedToCommentID,
  });

  @JsonKey(name: postIDKey)
  final String postID;
  final String? lastCommentID;
  final String? repliedToCommentID;

  factory GetPostCommentsRequest.fromJson(JsonMap json) =>
      _$GetPostCommentsRequestFromJson(json);

  JsonMap toJson() => _$GetPostCommentsRequestToJson(this);
}
