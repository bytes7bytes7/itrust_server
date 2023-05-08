import 'package:fpdart/fpdart.dart';
import 'package:mediator/mediator.dart';

import '../../../../common/application/dto/new_media/new_media.dart';
import '../../../../common/application/exceptions/detailed_exception.dart';
import '../../../../common/domain/domain.dart';
import '../../common/common.dart';

class CreateGroupChatCommand
    extends Request<Either<List<DetailedException>, ChatResult>> {
  CreateGroupChatCommand({
    required this.userID,
    required this.title,
    required this.image,
    required this.guestIDs,
  }) : super(CreateGroupChatCommand);

  final UserID userID;
  final String title;
  final NewMedia? image;
  final List<UserID> guestIDs;
}
