import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../../utils/typedef.dart';
import '../../../../common/application/view_models/user_vm/user_vm.dart';

part 'end_users_response.g.dart';

@JsonSerializable()
class EndUsersResponse {
  const EndUsersResponse({
    required this.users,
  });

  final List<EndUserVM> users;

  factory EndUsersResponse.fromJson(JsonMap json) =>
      _$EndUsersResponseFromJson(json);

  JsonMap toJson() => _$EndUsersResponseToJson(this);
}
