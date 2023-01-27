import 'dart:convert';

import 'package:logging/logging.dart';
import 'package:shelf/shelf.dart';
import 'package:shelf_router/shelf_router.dart';

import '../common/common.dart';

part 'user.g.dart';

class UserService {
  const UserService({
    required Logger logger,
    required EndUserRepository endUserRepository,
    required StaffUserRepository staffUserRepository,
  })  : _logger = logger,
        _endUserRepository = endUserRepository,
        _staffUserRepository = staffUserRepository;

  final Logger _logger;
  final EndUserRepository _endUserRepository;
  final StaffUserRepository _staffUserRepository;

  Router get router => _$UserServiceRouter(this);

  @Route.get('/<userID>')
  Future<Response> fetchUser(Request request, String userID) async {
    final id = UserID(userID);

    final staff = await _staffUserRepository.find(userID: id);

    if (staff != null) {
      return Response.ok(json.encode(staff.toJson()));
    }

    final end = await _endUserRepository.find(userID: id);

    if (end != null) {
      return Response.ok(json.encode(end.toJson()));
    }

    return Response.notFound('User with id = $userID not found');
  }
}
