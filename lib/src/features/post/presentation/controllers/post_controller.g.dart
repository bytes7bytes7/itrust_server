// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'post_controller.dart';

// **************************************************************************
// ShelfRouterGenerator
// **************************************************************************

Router _$PostControllerRouter(PostController service) {
  final router = Router();
  router.add(
    'GET',
    r'/',
    service.getUserPosts,
  );
  router.add(
    'POST',
    r'/new',
    service.createPost,
  );
  router.add(
    'GET',
    r'/<postID>',
    service.getPost,
  );
  router.add(
    'POST',
    r'/<postID>/like',
    service.likePost,
  );
  router.add(
    'POST',
    r'/<postID>/unlike',
    service.unlikePost,
  );
  router.add(
    'GET',
    r'/<postID>/comments',
    service.getPostComments,
  );
  router.add(
    'POST',
    r'/<postID>/comment',
    service.commentPost,
  );
  router.add(
    'GET',
    r'/<postID>/comment/<commentID>',
    service.getPostComment,
  );
  router.add(
    'POST',
    r'/<postID>/comment/<commentID>/like',
    service.likePostComment,
  );
  router.add(
    'POST',
    r'/<postID>/comment/<commentID>/unlike',
    service.unlikePostComment,
  );
  return router;
}
