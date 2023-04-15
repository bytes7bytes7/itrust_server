import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../../utils/typedef.dart';
import '../../../../common/application/view_models/view_models.dart';

part 'posts_response.g.dart';

@JsonSerializable()
class PostsResponse {
  const PostsResponse({
    required this.posts,
  });

  final List<PostVM> posts;

  factory PostsResponse.fromJson(JsonMap json) => _$PostsResponseFromJson(json);

  JsonMap toJson() => _$PostsResponseToJson(this);
}
