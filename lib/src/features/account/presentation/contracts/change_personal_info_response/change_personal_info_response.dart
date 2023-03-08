import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../../utils/typedef.dart';

part 'change_personal_info_response.g.dart';

@JsonSerializable(includeIfNull: false)
class ChangePersonalInfoResponse {
  const ChangePersonalInfoResponse({
    this.firstName,
    this.lastName,
  });

  final String? firstName;
  final String? lastName;

  factory ChangePersonalInfoResponse.fromJson(JsonMap json) =>
      _$ChangePersonalInfoResponseFromJson(json);

  JsonMap toJson() => _$ChangePersonalInfoResponseToJson(this);
}
