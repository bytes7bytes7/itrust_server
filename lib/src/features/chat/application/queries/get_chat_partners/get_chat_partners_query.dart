import 'package:fpdart/fpdart.dart';
import 'package:mediator/mediator.dart';

import '../../../../common/application/common/common.dart';
import '../../../../common/application/exceptions/detailed_exception.dart';
import '../../../../common/domain/domain.dart';

class GetChatPartnersQuery
    extends Request<Either<List<DetailedException>, UsersResult>> {
  GetChatPartnersQuery({
    required this.userID,
    required this.lastUserID,
  }) : super(GetChatPartnersQuery);

  final UserID userID;
  final UserID? lastUserID;
}
