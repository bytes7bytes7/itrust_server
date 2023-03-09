import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../../utils/utils.dart';
import '../../../domain/domain.dart';

part 'log_in_request.g.dart';

@JsonSerializable()
class LogInRequest {
  const LogInRequest({
    required this.email,
    required this.password,
    required this.deviceInfo,
  });

  final String email;
  final String password;
  final DeviceInfo deviceInfo;

  factory LogInRequest.fromJson(JsonMap json) =>
      _$LogInRequestFromJson(json);

  JsonMap toJson() => _$LogInRequestToJson(this);
}
