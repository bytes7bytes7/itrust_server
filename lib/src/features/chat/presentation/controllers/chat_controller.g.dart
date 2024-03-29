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
  router.add(
    'POST',
    r'/group',
    service.createGroup,
  );
  router.add(
    'GET',
    r'/chat_partners',
    service.getChatPartners,
  );
  router.add(
    'POST',
    r'/send_message',
    service.sendMessage,
  );
  router.add(
    'POST',
    r'/read_message',
    service.readMessage,
  );
  router.add(
    'GET',
    r'/<chatID>/',
    service.getChat,
  );
  router.add(
    'GET',
    r'/<chatID>/messages',
    service.getMessages,
  );
  router.add(
    'GET',
    r'/<chatID>/listen',
    service.listenMessages,
  );
  router.add(
    'GET',
    r'/<chatID>/messages/<messageID>',
    service.getMessage,
  );
  return router;
}
