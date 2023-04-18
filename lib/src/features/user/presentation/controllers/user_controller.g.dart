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
    r'/people_amount',
    service.getPeopleAmount,
  );
  router.add(
    'GET',
    r'/all',
    service.getAllUsers,
  );
  router.add(
    'GET',
    r'/friends',
    service.getFriends,
  );
  router.add(
    'GET',
    r'/subscribers',
    service.getSubscribers,
  );
  router.add(
    'GET',
    r'/subscriptions',
    service.getSubscriptions,
  );
  router.add(
    'GET',
    r'/inbox_friend_bids',
    service.getInboxFriendBids,
  );
  router.add(
    'GET',
    r'/outbox_friend_bids',
    service.getOutboxFriendBids,
  );
  router.add(
    'GET',
    r'/info',
    service.getUserInfo,
  );
  router.add(
    'POST',
    r'/friend_bid',
    service.sendFriendBid,
  );
  router.add(
    'POST',
    r'/cancel_friend_bid',
    service.cancelFriendBid,
  );
  router.add(
    'POST',
    r'/respond_friend_bid',
    service.respondFriendBid,
  );
  router.add(
    'POST',
    r'/remove_friend',
    service.removeFriend,
  );
  router.add(
    'POST',
    r'/remove_subscriber',
    service.removeSubscriber,
  );
  router.add(
    'POST',
    r'/unsubscribe',
    service.unsubscribe,
  );
  return router;
}
