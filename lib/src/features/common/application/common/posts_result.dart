import '../view_models/post_vm/post_vm.dart';

class PostsResult {
  const PostsResult({
    required this.posts,
  });

  final List<PostVM> posts;
}
