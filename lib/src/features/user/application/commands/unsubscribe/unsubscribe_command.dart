import 'package:fpdart/fpdart.dart';
import 'package:mediator/mediator.dart';

import '../../../../common/application/exceptions/detailed_exception.dart';
import '../../../../common/domain/domain.dart';
import '../../common/common.dart';

class UnsubscribeCommand
    extends Request<Either<List<DetailedException>, UserInfoResult>> {
  UnsubscribeCommand({
    required this.userID,
    required this.unsubscribeUserID,
  }) : super(UnsubscribeCommand);

  final UserID userID;
  final UserID unsubscribeUserID;
}
