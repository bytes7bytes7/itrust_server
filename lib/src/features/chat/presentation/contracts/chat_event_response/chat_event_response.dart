import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../../utils/typedef.dart';
import '../../../../common/application/view_models/chat_vm/chat_vm.dart';
import '../../../../common/domain/domain.dart';

part 'chat_event_response.freezed.dart';

part 'chat_event_response.g.dart';

@freezed
class ChatEventResponse with _$ChatEventResponse {
  const factory ChatEventResponse({
    @Default([]) List<ChatVM> created,
    @Default([]) List<ChatID> deleted,
    @Default([]) List<ChatVM> updated,
  }) = _ChatEventResponse;

  factory ChatEventResponse.fromJson(JsonMap json) =>
      _$ChatEventResponseFromJson(json);
}
