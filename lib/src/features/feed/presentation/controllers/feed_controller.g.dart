// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'feed_controller.dart';

// **************************************************************************
// ShelfRouterGenerator
// **************************************************************************

Router _$FeedControllerRouter(FeedController service) {
  final router = Router();
  router.add(
    'GET',
    r'/',
    service.getFeed,
  );
  router.add(
    'POST',
    r'/new_post',
    service.createPost,
  );
  return router;
}
