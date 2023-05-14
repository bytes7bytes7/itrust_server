import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../../utils/typedef.dart';
import '../../../../common/application/view_models/user_vm/user_vm.dart';

part 'users_response.g.dart';

@JsonSerializable()
class UsersResponse {
  const UsersResponse({
    required this.users,
  });

  final List<UserVM> users;

  factory UsersResponse.fromJson(JsonMap json) => _$UsersResponseFromJson(json);

  JsonMap toJson() => _$UsersResponseToJson(this);
}
