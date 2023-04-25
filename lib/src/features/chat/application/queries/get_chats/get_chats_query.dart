import 'package:fpdart/fpdart.dart';
import 'package:mediator/mediator.dart';

import '../../../../common/application/exceptions/detailed_exception.dart';
import '../../../../common/domain/domain.dart';
import '../../common/common.dart';

class GetChatsQuery
    extends Request<Either<List<DetailedException>, ChatsResult>> {
  GetChatsQuery({
    required this.userID,
    required this.lastChatID,
  }) : super(GetChatsQuery);

  final UserID userID;
  final ChatID? lastChatID;
}
