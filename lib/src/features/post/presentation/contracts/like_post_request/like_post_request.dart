import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../../utils/typedef.dart';
import '../json_keys.dart';

part 'like_post_request.g.dart';

@JsonSerializable()
class LikePostRequest {
  const LikePostRequest({
    required this.postID,
  });

  @JsonKey(name: postIDKey)
  final String postID;

  factory LikePostRequest.fromJson(JsonMap json) =>
      _$LikePostRequestFromJson(json);

  JsonMap toJson() => _$LikePostRequestToJson(this);
}
