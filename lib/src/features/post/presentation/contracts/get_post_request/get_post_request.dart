import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../../utils/typedef.dart';
import '../json_keys.dart';

part 'get_post_request.g.dart';

@JsonSerializable()
class GetPostRequest {
  const GetPostRequest({
    required this.postID,
  });

  @JsonKey(name: postIDKey)
  final String postID;

  factory GetPostRequest.fromJson(JsonMap json) =>
      _$GetPostRequestFromJson(json);

  JsonMap toJson() => _$GetPostRequestToJson(this);
}
