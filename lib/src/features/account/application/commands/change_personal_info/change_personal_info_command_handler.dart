import 'dart:async';

import 'package:fpdart/fpdart.dart';
import 'package:injectable/injectable.dart';
import 'package:mediator/mediator.dart';

import '../../../../../repositories/interfaces/interfaces.dart';
import '../../../../common/application/exceptions/exceptions.dart';
import '../../common/change_personal_info_result.dart';
import 'change_personal_info.dart';

@singleton
class ChangePersonalInfoCommandHandler extends RequestHandler<
    ChangePersonalInfoCommand,
    Either<List<DetailedException>, ChangePersonalInfoResult>> {
  const ChangePersonalInfoCommandHandler({
    required EndUserRepository endUserRepository,
  }) : _endUserRepository = endUserRepository;

  final EndUserRepository _endUserRepository;

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

    await _endUserRepository.addOrUpdate(user: newUser);

    return right(
      ChangePersonalInfoResult(
        user: newUser,
      ),
    );
  }
}
