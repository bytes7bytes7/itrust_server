import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../../utils/typedef.dart';

part 'unlike_post_request.g.dart';

@JsonSerializable()
class UnlikePostRequest {
  const UnlikePostRequest();

  factory UnlikePostRequest.fromJson(JsonMap json) =>
      _$UnlikePostRequestFromJson(json);

  JsonMap toJson() => _$UnlikePostRequestToJson(this);
}
