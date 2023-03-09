import 'dart:async';

import 'package:fpdart/fpdart.dart';
import 'package:injectable/injectable.dart';
import 'package:mediator/mediator.dart';

import '../../../../../repositories/interfaces/interfaces.dart';
import '../../../../common/application/exceptions/exceptions.dart';
import '../../common/common.dart';
import 'get_user_by_id_query.dart';

@singleton
class GetUserByIDQueryHandler extends RequestHandler<
    Either<List<DetailedException>, GetUserByIDResult>, GetUserByIDQuery> {
  const GetUserByIDQueryHandler({
    required EndUserRepository endUserRepository,
    required StaffUserRepository staffUserRepository,
  })  : _endUserRepository = endUserRepository,
        _staffUserRepository = staffUserRepository;

  final EndUserRepository _endUserRepository;
  final StaffUserRepository _staffUserRepository;

  @override
  FutureOr<Either<List<DetailedException>, GetUserByIDResult>> handle(
    GetUserByIDQuery request,
  ) async {
    if (request.userID.isEndUserID) {
      final endUser = await _endUserRepository.getByID(id: request.userID);

      if (endUser != null) {
        return right(
          GetUserByIDResult(
            user: endUser,
          ),
        );
      }
    }

    if (request.userID.isStaffUserID) {
      final staffUser = await _staffUserRepository.getByID(id: request.userID);

      if (staffUser != null) {
        return right(
          GetUserByIDResult(
            user: staffUser,
          ),
        );
      }
    }

    return left([const UserDoesNotExist()]);
  }
}
