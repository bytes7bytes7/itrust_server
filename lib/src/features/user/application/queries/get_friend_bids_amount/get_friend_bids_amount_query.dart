import 'package:fpdart/fpdart.dart';
import 'package:mediator/mediator.dart';

import '../../../../common/application/exceptions/detailed_exception.dart';
import '../../../../common/domain/domain.dart';
import '../../common/common.dart';

class GetFriendBidsAmountQuery
    extends Request<Either<List<DetailedException>, FriendBidsAmountResult>> {
  GetFriendBidsAmountQuery({
    required this.userID,
  }) : super(GetFriendBidsAmountQuery);

  final UserID userID;
}
