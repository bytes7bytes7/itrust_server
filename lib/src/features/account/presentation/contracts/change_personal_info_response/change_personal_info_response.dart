import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../../utils/typedef.dart';
import '../../../../common/common.dart';

part 'change_personal_info_response.g.dart';

@JsonSerializable(includeIfNull: false)
class ChangePersonalInfoResponse {
  const ChangePersonalInfoResponse({
    required this.user,
  });

  final EndUser user;

  factory ChangePersonalInfoResponse.fromJson(JsonMap json) =>
      _$ChangePersonalInfoResponseFromJson(json);

  JsonMap toJson() => _$ChangePersonalInfoResponseToJson(this);
}
