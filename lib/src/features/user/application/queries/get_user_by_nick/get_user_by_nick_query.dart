import 'package:fpdart/fpdart.dart';
import 'package:mediator/mediator.dart';

import '../../../../common/application/exceptions/detailed_exception.dart';
import '../../common/common.dart';

class GetUserByNickQuery
    extends Request<Either<List<DetailedException>, GetUserByNickResult>> {
  GetUserByNickQuery({
    required this.nick,
  }) : super(GetUserByNickQuery);

  final String nick;
}
