import 'package:fpdart/fpdart.dart';
import 'package:mediator/mediator.dart';

import '../../../../common/application/exceptions/detailed_exception.dart';
import '../../../../common/domain/domain.dart';
import '../../common/common.dart';

class GetMessagesQuery
    extends Request<Either<List<DetailedException>, MessagesResult>> {
  GetMessagesQuery({
    required this.userID,
    required this.chatID,
    required this.lastMessageID,
  }) : super(GetMessagesQuery);

  final UserID userID;
  final ChatID chatID;
  final MessageID? lastMessageID;
}
