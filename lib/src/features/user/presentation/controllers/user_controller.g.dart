// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_controller.dart';

// **************************************************************************
// ShelfRouterGenerator
// **************************************************************************

Router _$UserControllerRouter(UserController service) {
  final router = Router();
  router.add(
    'GET',
    r'/id/<userID>',
    service.getUserByID,
  );
  router.add(
    'GET',
    r'/nick/<userNick>',
    service.getUserByNick,
  );
  router.add(
    'GET',
    r'/friends',
    service.getFriends,
  );
  router.add(
    'POST',
    r'/friend_bid',
    service.sendFriendBid,
  );
  router.add(
    'GET',
    r'/info',
    service.getUserInfo,
  );
  return router;
}
