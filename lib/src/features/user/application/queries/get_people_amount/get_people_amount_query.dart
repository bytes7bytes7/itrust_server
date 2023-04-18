import 'package:fpdart/fpdart.dart';
import 'package:mediator/mediator.dart';

import '../../../../common/application/exceptions/detailed_exception.dart';
import '../../../../common/domain/domain.dart';
import '../../common/common.dart';

class GetPeopleAmountQuery
    extends Request<Either<List<DetailedException>, PeopleAmountResult>> {
  GetPeopleAmountQuery({
    required this.userID,
  }) : super(GetPeopleAmountQuery);

  final UserID userID;
}
