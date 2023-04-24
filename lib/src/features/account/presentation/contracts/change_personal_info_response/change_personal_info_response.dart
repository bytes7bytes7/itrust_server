import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../../utils/typedef.dart';
import '../../../../common/application/view_models/user_vm/user_vm.dart';

part 'change_personal_info_response.g.dart';

@JsonSerializable(includeIfNull: false)
class ChangePersonalInfoResponse {
  const ChangePersonalInfoResponse({
    required this.user,
  });

  final EndUserVM user;

  factory ChangePersonalInfoResponse.fromJson(JsonMap json) =>
      _$ChangePersonalInfoResponseFromJson(json);

  JsonMap toJson() => _$ChangePersonalInfoResponseToJson(this);
}
