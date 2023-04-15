import 'dart:async';

import 'package:fpdart/fpdart.dart';
import 'package:injectable/injectable.dart';
import 'package:mapster/mapster.dart';
import 'package:mediator/mediator.dart';

import '../../../../../repositories/interfaces/interfaces.dart';
import '../../../../common/application/exceptions/exceptions.dart';
import '../../../../common/application/view_models/user_vm/user_vm.dart';
import '../../common/common.dart';
import 'get_user_by_nick_query.dart';

@singleton
class GetUserByNickQueryHandler extends RequestHandler<GetUserByNickQuery,
    Either<List<DetailedException>, UserResult>> {
  const GetUserByNickQueryHandler({
    required EndUserRepository endUserRepository,
    required StaffUserRepository staffUserRepository,
    required EndUserActivityRepository endUserActivityRepository,
    required Mapster mapster,
  })  : _endUserRepository = endUserRepository,
        _staffUserRepository = staffUserRepository,
        _endUserActivityRepository = endUserActivityRepository,
        _mapster = mapster;

  final EndUserRepository _endUserRepository;
  final StaffUserRepository _staffUserRepository;
  final EndUserActivityRepository _endUserActivityRepository;
  final Mapster _mapster;

  @override
  FutureOr<Either<List<DetailedException>, UserResult>> handle(
    GetUserByNickQuery request,
  ) async {
    final staffUser = await _staffUserRepository.getByNick(nick: request.nick);

    if (staffUser != null) {
      return right(
        UserResult(
          user: _mapster.map1(staffUser, To<StaffUserVM>()),
        ),
      );
    }

    final endUser = await _endUserRepository.getByNick(nick: request.nick);

    if (endUser != null) {
      final onlineStatus = await _endUserActivityRepository.get(endUser.id);

      return right(
        UserResult(
          user: _mapster.map2(endUser, onlineStatus, To<EndUserVM>()),
        ),
      );
    }

    return left([const UserNotFound()]);
  }
}
