import 'package:fpdart/fpdart.dart';
import 'package:mediator/mediator.dart';

import '../../../../common/application/exceptions/detailed_exception.dart';
import '../../../../common/domain/domain.dart';
import '../../common/common.dart';

class GetChatQuery
    extends Request<Either<List<DetailedException>, ChatResult>> {
  GetChatQuery({
    required this.userID,
    required this.chatID,
  }) : super(GetChatQuery);

  final UserID userID;
  final ChatID chatID;
}
