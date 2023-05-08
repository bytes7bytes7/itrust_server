import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../../utils/typedef.dart';
import '../../../../common/application/view_models/message_vm/message_vm.dart';
import '../../../../common/domain/domain.dart';

part 'message_event_response.g.dart';

@JsonSerializable()
class MessageEventResponse {
  const MessageEventResponse({
    required this.created,
    required this.deleted,
    required this.updated,
  });

  final List<MessageVM> created;
  final List<MessageID> deleted;
  final List<MessageVM> updated;

  factory MessageEventResponse.fromJson(JsonMap json) =>
      _$MessageEventResponseFromJson(json);

  JsonMap toJson() => _$MessageEventResponseToJson(this);
}
