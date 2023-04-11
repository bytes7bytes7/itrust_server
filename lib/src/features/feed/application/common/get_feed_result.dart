import '../view_models/post_vm/post_vm.dart';

class GetFeedResult {
  const GetFeedResult({
    required this.posts,
  });

  final List<PostVM> posts;
}
