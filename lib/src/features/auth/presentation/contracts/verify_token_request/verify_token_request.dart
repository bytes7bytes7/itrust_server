import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../../utils/utils.dart';

part 'verify_token_request.g.dart';

@JsonSerializable()
class VerifyTokenRequest {
  const VerifyTokenRequest({
    required this.deviceInfo,
  });

  final String deviceInfo;

  factory VerifyTokenRequest.fromJson(JsonMap json) =>
      _$VerifyTokenRequestFromJson(json);

  JsonMap toJson() => _$VerifyTokenRequestToJson(this);
}
