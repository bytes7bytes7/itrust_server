import 'package:fpdart/fpdart.dart';
import 'package:mediator/mediator.dart';

import '../../../../common/application/exceptions/detailed_exception.dart';
import '../../../../common/domain/domain.dart';
import '../../common/common.dart';

class CreateDialogueChatCommand
    extends Request<Either<List<DetailedException>, ChatResult>> {
  CreateDialogueChatCommand({
    required this.userID,
    required this.partnerID,
  }) : super(CreateDialogueChatCommand);

  final UserID userID;
  final UserID partnerID;
}
