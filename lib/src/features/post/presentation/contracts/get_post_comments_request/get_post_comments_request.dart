import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../../utils/typedef.dart';

part 'get_post_comments_request.g.dart';

@JsonSerializable()
class GetPostCommentsRequest {
  const GetPostCommentsRequest({
    required this.lastCommentID,
    required this.repliedToCommentID,
  });

  final String? lastCommentID;
  final String? repliedToCommentID;

  factory GetPostCommentsRequest.fromJson(JsonMap json) =>
      _$GetPostCommentsRequestFromJson(json);

  JsonMap toJson() => _$GetPostCommentsRequestToJson(this);
}
