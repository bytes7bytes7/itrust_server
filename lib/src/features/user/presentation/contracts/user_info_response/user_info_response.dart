import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../../utils/typedef.dart';
import '../../../application/view_models/user_info_vm/user_info_vm.dart';

part 'user_info_response.g.dart';

@JsonSerializable()
class UserInfoResponse {
  const UserInfoResponse({
    required this.userInfo,
  });

  final UserInfoVM userInfo;

  factory UserInfoResponse.fromJson(JsonMap json) =>
      _$UserInfoResponseFromJson(json);

  JsonMap toJson() => _$UserInfoResponseToJson(this);
}
