// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'account_controller.dart';

// **************************************************************************
// ShelfRouterGenerator
// **************************************************************************

Router _$AccountControllerRouter(AccountController service) {
  final router = Router();
  router.add(
    'POST',
    r'/personal_info',
    service.changePersonalInfo,
  );
  router.add(
    'GET',
    r'/devices',
    service.getDevices,
  );
  return router;
}
