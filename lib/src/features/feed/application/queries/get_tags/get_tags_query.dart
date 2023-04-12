import 'package:fpdart/fpdart.dart';
import 'package:mediator/mediator.dart';

import '../../../../common/application/exceptions/detailed_exception.dart';
import '../../../../common/domain/domain.dart';
import '../../common/common.dart';

class GetTagsQuery
    extends Request<Either<List<DetailedException>, GetTagsResult>> {
  GetTagsQuery({
    required this.userID,
  }) : super(GetTagsQuery);

  final UserID userID;
}
