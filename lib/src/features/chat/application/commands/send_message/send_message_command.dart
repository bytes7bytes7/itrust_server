import 'package:fpdart/fpdart.dart';
import 'package:mediator/mediator.dart';

import '../../../../common/application/dto/new_media/new_media.dart';
import '../../../../common/application/exceptions/detailed_exception.dart';
import '../../../../common/domain/domain.dart';
import '../../common/common.dart';

class SendMessageCommand
    extends Request<Either<List<DetailedException>, MessageResult>> {
  SendMessageCommand({
    required this.userID,
    required this.chatID,
    required this.text,
    required this.media,
    required this.willBeBurntAfterSec,
  }) : super(SendMessageCommand);

  final UserID userID;
  final ChatID chatID;
  final String text;
  final List<NewMedia> media;
  final int? willBeBurntAfterSec;
}
