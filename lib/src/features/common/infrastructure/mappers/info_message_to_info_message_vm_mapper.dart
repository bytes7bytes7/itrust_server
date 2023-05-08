import 'package:mapster/mapster.dart';

import '../../application/mapper_dto/mapper_dto.dart';
import '../../application/view_models/message_vm/message_vm.dart';
import '../../domain/domain.dart';

class InfoMessageToInfoMessageVMMapper
    extends TwoSourcesMapper<InfoMessage, ToMessageVM, InfoMessageVM> {
  InfoMessageToInfoMessageVMMapper(super.input);

  @override
  InfoMessageVM map() {
    return InfoMessageVM(
      id: _message.id,
      chatID: _message.chatID,
      sentAt: _message.sentAt,
      isReadByMe: _dto.isReadByMe,
      markUp: _message.markUp,
      markUpData: _message.markUpData,
      willBeBurntAt: _message.willBeBurntAt,
    );
  }

  InfoMessage get _message => source1;

  ToMessageVM get _dto => source2;
}
