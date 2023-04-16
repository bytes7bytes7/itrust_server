// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'media_controller.dart';

// **************************************************************************
// ShelfRouterGenerator
// **************************************************************************

Router _$MediaControllerRouter(MediaController service) {
  final router = Router();
  router.add(
    'GET',
    r'/<mediaID>',
    service.getMedia,
  );
  return router;
}
