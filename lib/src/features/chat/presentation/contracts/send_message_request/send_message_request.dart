import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../../utils/typedef.dart';
import '../../../../common/application/dto/dto.dart';

part 'send_message_request.g.dart';

@JsonSerializable()
class SendMessageRequest {
  const SendMessageRequest({
    required this.chatID,
    required this.text,
    required this.media,
    required this.willBeBurntAfterSec,
  });

  final String chatID;
  final String text;
  final List<NewMedia> media;
  final int? willBeBurntAfterSec;

  factory SendMessageRequest.fromJson(JsonMap json) =>
      _$SendMessageRequestFromJson(json);

  JsonMap toJson() => _$SendMessageRequestToJson(this);
}
