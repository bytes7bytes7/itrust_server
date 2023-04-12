// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'post_controller.dart';

// **************************************************************************
// ShelfRouterGenerator
// **************************************************************************

Router _$PostControllerRouter(PostController service) {
  final router = Router();
  router.add(
    'GET',
    r'/<postID>',
    service.getPost,
  );
  router.add(
    'POST',
    r'/new',
    service.createPost,
  );
  return router;
}
