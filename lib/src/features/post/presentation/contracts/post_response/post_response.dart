import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../../utils/typedef.dart';
import '../../../../common/application/view_models/view_models.dart';

part 'post_response.g.dart';

@JsonSerializable()
class PostResponse {
  const PostResponse({
    required this.post,
  });

  final PostVM post;

  factory PostResponse.fromJson(JsonMap json) => _$PostResponseFromJson(json);

  JsonMap toJson() => _$PostResponseToJson(this);
}
