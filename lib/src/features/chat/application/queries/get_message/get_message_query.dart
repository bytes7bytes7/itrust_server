import 'package:fpdart/fpdart.dart';
import 'package:mediator/mediator.dart';

import '../../../../common/application/exceptions/detailed_exception.dart';
import '../../../../common/domain/domain.dart';
import '../../common/common.dart';

class GetMessageQuery
    extends Request<Either<List<DetailedException>, MessageResult>> {
  GetMessageQuery({
    required this.userID,
    required this.chatID,
    required this.messageID,
  }) : super(GetMessageQuery);

  final UserID userID;
  final ChatID chatID;
  final MessageID messageID;
}
