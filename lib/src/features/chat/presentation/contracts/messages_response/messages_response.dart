import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../../utils/typedef.dart';
import '../../../../common/application/view_models/message_vm/message_vm.dart';

part 'messages_response.g.dart';

@JsonSerializable()
class MessagesResponse {
  const MessagesResponse({
    required this.messages,
  });

  final List<MessageVM> messages;

  factory MessagesResponse.fromJson(JsonMap json) =>
      _$MessagesResponseFromJson(json);

  JsonMap toJson() => _$MessagesResponseToJson(this);
}
