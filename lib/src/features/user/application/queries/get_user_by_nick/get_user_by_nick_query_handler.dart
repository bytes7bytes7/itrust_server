import 'dart:async';

import 'package:fpdart/fpdart.dart';
import 'package:injectable/injectable.dart';
import 'package:mapster/mapster.dart';
import 'package:mediator/mediator.dart';

import '../../../../../repositories/interfaces/interfaces.dart';
import '../../../../common/application/exceptions/exceptions.dart';
import '../../../../common/application/mapper_dto/to_user_vm.dart';
import '../../../../common/application/view_models/user_vm/user_vm.dart';
import '../../../../common/domain/value_objects/online_status/online_status.dart';
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
      final avatarsAmount = await _staffUserRepository.getAvatarsAmount(
        id: staffUser.id,
      );
      final avatar = await _staffUserRepository.getAvatar(id: staffUser.id);

      return right(
        UserResult(
          user: _mapster.map2(
            staffUser,
            ToUserVM(
              onlineStatus: const OnlineStatus.empty(),
              avatarsAmount: avatarsAmount,
              avatarUrl: avatar,
            ),
            To<StaffUserVM>(),
          ),
        ),
      );
    }

    final endUser = await _endUserRepository.getByNick(nick: request.nick);

    if (endUser != null) {
      final onlineStatus = await _endUserActivityRepository.get(endUser.id);
      final avatarsAmount =
          await _endUserRepository.getAvatarsAmount(id: endUser.id);
      final avatar = await _endUserRepository.getAvatar(id: endUser.id);

      return right(
        UserResult(
          user: _mapster.map2(
            endUser,
            ToUserVM(
              onlineStatus: onlineStatus,
              avatarsAmount: avatarsAmount,
              avatarUrl: avatar,
            ),
            To<EndUserVM>(),
          ),
        ),
      );
    }

    return left([const UserNotFound()]);
  }
}
