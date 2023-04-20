import 'package:fpdart/fpdart.dart';
import 'package:mediator/mediator.dart';

import '../../../../common/application/exceptions/detailed_exception.dart';
import '../../common/common.dart';

class GetChatsQuery
    extends Request<Either<List<DetailedException>, ChatsResult>> {
  GetChatsQuery() : super(GetChatsQuery);
}
