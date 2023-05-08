import 'package:mapster/mapster.dart';

import '../../application/mapper_dto/mapper_dto.dart';
import '../../application/view_models/message_vm/message_vm.dart';
import '../../domain/domain.dart';

class UserMessageToUserMessageVMMapper
    extends TwoSourcesMapper<UserMessage, ToMessageVM, UserMessageVM> {
  UserMessageToUserMessageVMMapper(super.input);

  @override
  UserMessageVM map() {
    return UserMessageVM(
      id: _message.id,
      chatID: _message.chatID,
      senderID: _message.senderID,
      sentAt: _message.sentAt,
      isReadByMe: _dto.isReadByMe,
      text: _message.text,
      media: _dto.media,
      willBeBurntAt: _message.willBeBurntAt,
      modifiedAt: _message.modifiedAt,
    );
  }

  UserMessage get _message => source1;

  ToMessageVM get _dto => source2;
}
