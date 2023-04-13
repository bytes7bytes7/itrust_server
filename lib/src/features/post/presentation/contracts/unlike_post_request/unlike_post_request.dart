import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../../utils/typedef.dart';
import '../json_keys.dart';

part 'unlike_post_request.g.dart';

@JsonSerializable()
class UnlikePostRequest {
  const UnlikePostRequest({
    required this.postID,
  });

  @JsonKey(name: postIDKey)
  final String postID;

  factory UnlikePostRequest.fromJson(JsonMap json) =>
      _$UnlikePostRequestFromJson(json);

  JsonMap toJson() => _$UnlikePostRequestToJson(this);
}
