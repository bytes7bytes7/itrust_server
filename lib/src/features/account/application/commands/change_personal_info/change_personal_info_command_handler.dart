import 'dart:async';

import 'package:fpdart/fpdart.dart';
import 'package:injectable/injectable.dart';
import 'package:mapster/mapster.dart';
import 'package:mediator/mediator.dart';

import '../../../../../repositories/interfaces/interfaces.dart';
import '../../../../common/application/exceptions/exceptions.dart';
import '../../../../common/application/mapper_dto/to_user_vm.dart';
import '../../../../common/application/view_models/user_vm/user_vm.dart';
import '../../common/change_personal_info_result.dart';
import 'change_personal_info.dart';

@singleton
class ChangePersonalInfoCommandHandler extends RequestHandler<
    ChangePersonalInfoCommand,
    Either<List<DetailedException>, ChangePersonalInfoResult>> {
  const ChangePersonalInfoCommandHandler({
    required EndUserRepository endUserRepository,
    required EndUserActivityRepository endUserActivityRepository,
    required Mapster mapster,
  })  : _endUserRepository = endUserRepository,
        _endUserActivityRepository = endUserActivityRepository,
        _mapster = mapster;

  final EndUserRepository _endUserRepository;
  final EndUserActivityRepository _endUserActivityRepository;
  final Mapster _mapster;

  @override
  FutureOr<Either<List<DetailedException>, ChangePersonalInfoResult>> handle(
    ChangePersonalInfoCommand request,
  ) async {
    final oldUser = await _endUserRepository.getByID(id: request.userID);

    if (oldUser == null) {
      return left([const UserNotFound()]);
    }

    final newUser = oldUser.copyWith(
      firstName: request.firstName,
      lastName: request.lastName,
    );

    await _endUserRepository.update(user: newUser);

    final onlineStatus = await _endUserActivityRepository.get(request.userID);
    final avatarsAmount =
        await _endUserRepository.getAvatarsAmount(id: request.userID);
    final avatar = await _endUserRepository.getAvatar(id: request.userID);

    return right(
      ChangePersonalInfoResult(
        user: _mapster.map2(
          newUser,
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
}
