import '../../../common/application/view_models/view_models.dart';

class GetFeedResult {
  const GetFeedResult({
    required this.posts,
  });

  final List<PostVM> posts;
}
