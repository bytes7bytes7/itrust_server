// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chat_controller.dart';

// **************************************************************************
// ShelfRouterGenerator
// **************************************************************************

Router _$ChatControllerRouter(ChatController service) {
  final router = Router();
  router.add(
    'GET',
    r'/',
    service.getChats,
  );
  router.add(
    'GET',
    r'/listen',
    service.listenChats,
  );
  router.add(
    'POST',
    r'/monologue',
    service.createMonologue,
  );
  return router;
}
