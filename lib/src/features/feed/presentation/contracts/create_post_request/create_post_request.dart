import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../../utils/typedef.dart';
import '../../../application/dto/dto.dart';

part 'create_post_request.g.dart';

@JsonSerializable()
class CreatePostRequest {
  const CreatePostRequest({
    required this.post,
  });

  final NewPost post;

  factory CreatePostRequest.fromJson(JsonMap json) =>
      _$CreatePostRequestFromJson(json);

  JsonMap toJson() => _$CreatePostRequestToJson(this);
}
