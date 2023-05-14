import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../../utils/typedef.dart';
import '../../../../common/domain/domain.dart';

part 'read_message_request.g.dart';

@JsonSerializable()
class ReadMessageRequest {
  const ReadMessageRequest({
    required this.chatID,
    required this.messageID,
  });

  final ChatID chatID;
  final MessageID messageID;

  factory ReadMessageRequest.fromJson(JsonMap json) =>
      _$ReadMessageRequestFromJson(json);

  JsonMap toJson() => _$ReadMessageRequestToJson(this);
}
