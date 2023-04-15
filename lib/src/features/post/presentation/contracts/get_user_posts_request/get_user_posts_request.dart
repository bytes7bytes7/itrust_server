import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../../utils/typedef.dart';

part 'get_user_posts_request.g.dart';

@JsonSerializable()
class GetUserPostsRequest {
  const GetUserPostsRequest({
    required this.byUserID,
    required this.lastPostID,
  });

  final String byUserID;
  final String? lastPostID;

  factory GetUserPostsRequest.fromJson(JsonMap json) =>
      _$GetUserPostsRequestFromJson(json);

  JsonMap toJson() => _$GetUserPostsRequestToJson(this);
}
