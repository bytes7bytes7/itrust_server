import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../../utils/typedef.dart';
import '../new_media/new_media.dart';

part 'new_post.g.dart';

@JsonSerializable()
class NewPost {
  const NewPost({
    required this.text,
    required this.media,
    required this.tags,
  });

  final String text;
  final List<NewMedia> media;
  final List<String> tags;

  factory NewPost.fromJson(JsonMap json) => _$NewPostFromJson(json);

  JsonMap toJson() => _$NewPostToJson(this);
}
