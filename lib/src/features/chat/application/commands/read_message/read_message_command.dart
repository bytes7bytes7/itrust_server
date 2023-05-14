import 'package:fpdart/fpdart.dart';
import 'package:mediator/mediator.dart';

import '../../../../common/application/exceptions/detailed_exception.dart';
import '../../../../common/domain/domain.dart';
import '../../common/common.dart';

class ReadMessageCommand
    extends Request<Either<List<DetailedException>, MessageResult>> {
  ReadMessageCommand({
    required this.userID,
    required this.chatID,
    required this.messageID,
  }) : super(ReadMessageCommand);

  final UserID userID;
  final ChatID chatID;
  final MessageID messageID;
}
