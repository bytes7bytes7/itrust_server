import 'package:fpdart/fpdart.dart';
import 'package:mediator/mediator.dart';

import '../../../../common/application/exceptions/detailed_exception.dart';
import '../../../../common/domain/domain.dart';
import '../../../domain/domain.dart';
import '../../common/common.dart';

class GetFeedQuery
    extends Request<Either<List<DetailedException>, GetFeedResult>> {
  GetFeedQuery({
    required this.userID,
    required this.lastPostID,
  }) : super(GetFeedQuery);

  final UserID userID;
  final PostID lastPostID;
}
