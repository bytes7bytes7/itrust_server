import 'package:fpdart/fpdart.dart';
import 'package:mediator/mediator.dart';

import '../../../../common/application/exceptions/detailed_exception.dart';
import '../../../../common/domain/domain.dart';
import '../../common/common.dart';

class GetUserByNickQuery
    extends Request<Either<List<DetailedException>, UserResult>> {
  GetUserByNickQuery({
    required this.userID,
    required this.nick,
  }) : super(GetUserByNickQuery);

  final UserID userID;
  final String nick;
}
