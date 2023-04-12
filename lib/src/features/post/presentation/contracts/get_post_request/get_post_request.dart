import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../../utils/typedef.dart';

part 'get_post_request.g.dart';

@JsonSerializable()
class GetPostRequest {
  const GetPostRequest({
    required this.id,
  });

  final String id;

  factory GetPostRequest.fromJson(JsonMap json) =>
      _$GetPostRequestFromJson(json);

  JsonMap toJson() => _$GetPostRequestToJson(this);
}
