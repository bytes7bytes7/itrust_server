import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../../utils/typedef.dart';
import '../../../../common/application/view_models/message_vm/message_vm.dart';

part 'message_response.g.dart';

@JsonSerializable()
class MessageResponse {
  const MessageResponse({
    required this.message,
  });

  final MessageVM message;

  factory MessageResponse.fromJson(JsonMap json) =>
      _$MessageResponseFromJson(json);

  JsonMap toJson() => _$MessageResponseToJson(this);
}
