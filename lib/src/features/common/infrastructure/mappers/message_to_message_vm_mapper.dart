import 'package:mapster/mapster.dart';

import '../../application/mapper_dto/mapper_dto.dart';
import '../../application/view_models/message_vm/message_vm.dart';
import '../../domain/domain.dart';

class MessageToMessageVMMapper
    extends TwoSourcesMapper<Message, ToMessageVM, MessageVM> {
  MessageToMessageVMMapper(
    super.input, {
    required Mapster mapster,
  }) : _mapster = mapster;

  final Mapster _mapster;

  @override
  MessageVM map() {
    final message = _message;

    if (message is InfoMessage) {
      return _mapster.map2(message, _dto, To<InfoMessageVM>());
    }

    if (message is UserMessage) {
      return _mapster.map2(message, _dto, To<UserMessageVM>());
    }

    throw Exception('Unknown type of Message');
  }

  Message get _message => source1;

  ToMessageVM get _dto => source2;
}
