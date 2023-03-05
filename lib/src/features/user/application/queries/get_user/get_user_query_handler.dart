import 'dart:async';

import 'package:fpdart/fpdart.dart';
import 'package:injectable/injectable.dart';
import 'package:mediator/mediator.dart';

import '../../../../auth/application/exceptions/exceptions.dart';
import '../../../../common/application/application.dart';
import '../../../../common/application/exceptions/detailed_exception.dart';
import '../../common/common.dart';
import 'get_user_query.dart';

@singleton
class GetUserQueryHandler extends RequestHandler<
    Either<List<DetailedException>, GetUserResult>, GetUserQuery> {
  const GetUserQueryHandler({
    required EndUserRepository endUserRepository,
    required StaffUserRepository staffUserRepository,
  })  : _endUserRepository = endUserRepository,
        _staffUserRepository = staffUserRepository;

  final EndUserRepository _endUserRepository;
  final StaffUserRepository _staffUserRepository;

  @override
  FutureOr<Either<List<DetailedException>, GetUserResult>> handle(
    GetUserQuery request,
  ) async {
    if (request.userID.isEndUserID) {
      final endUser = await _endUserRepository.getByID(id: request.userID);

      if (endUser != null) {
        return right(
          GetUserResult(
            user: endUser,
          ),
        );
      }
    }

    if (request.userID.isStaffUserID) {
      final staffUser = await _staffUserRepository.getByID(id: request.userID);

      if (staffUser != null) {
        return right(
          GetUserResult(
            user: staffUser,
          ),
        );
      }
    }

    return left([const UserDoesNotExist()]);
  }
}
