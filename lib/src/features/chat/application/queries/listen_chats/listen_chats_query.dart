import 'package:fpdart/fpdart.dart';
import 'package:mediator/mediator.dart';

import '../../../../common/application/exceptions/detailed_exception.dart';
import '../../../../common/domain/domain.dart';
import '../../common/common.dart';

class ListenChatsQuery
    extends Request<Either<List<DetailedException>, ChatEventResult>> {
  ListenChatsQuery({
    required this.userID,
  }) : super(ListenChatsQuery);

  final UserID userID;
}
