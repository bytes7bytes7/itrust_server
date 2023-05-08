import 'package:fpdart/fpdart.dart';
import 'package:mediator/mediator.dart';

import '../../../../common/application/exceptions/detailed_exception.dart';
import '../../../../common/domain/domain.dart';
import '../../common/common.dart';

class ListenMessagesQuery
    extends StreamRequest<Either<List<DetailedException>, MessageEventResult>> {
  ListenMessagesQuery({
    required this.userID,
    required this.chatID,
    required this.inputStream,
  }) : super(ListenMessagesQuery);

  final UserID userID;
  final ChatID chatID;
  final Stream inputStream;
}
