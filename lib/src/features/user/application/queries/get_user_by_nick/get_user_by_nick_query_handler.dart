import 'dart:async';

import 'package:fpdart/fpdart.dart';
import 'package:injectable/injectable.dart';
import 'package:mediator/mediator.dart';

import '../../../../../repositories/interfaces/interfaces.dart';
import '../../../../common/application/exceptions/exceptions.dart';
import '../../common/common.dart';
import 'get_user_by_nick_query.dart';

@singleton
class GetUserByNickQueryHandler extends RequestHandler<GetUserByNickQuery,
    Either<List<DetailedException>, GetUserByNickResult>> {
  const GetUserByNickQueryHandler({
    required EndUserRepository endUserRepository,
    required StaffUserRepository staffUserRepository,
  })  : _endUserRepository = endUserRepository,
        _staffUserRepository = staffUserRepository;

  final EndUserRepository _endUserRepository;
  final StaffUserRepository _staffUserRepository;

  @override
  FutureOr<Either<List<DetailedException>, GetUserByNickResult>> handle(
    GetUserByNickQuery request,
  ) async {
    final staffUser = await _staffUserRepository.getByNick(nick: request.nick);

    if (staffUser != null) {
      return right(
        GetUserByNickResult(
          user: staffUser,
        ),
      );
    }

    final endUser = await _endUserRepository.getByNick(nick: request.nick);

    if (endUser != null) {
      return right(
        GetUserByNickResult(
          user: endUser,
        ),
      );
    }

    return left([const UserNotFound()]);
  }
}
