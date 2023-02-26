import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../../utils/utils.dart';
import '../../../../common/common.dart';

part 'auth_response.g.dart';

@JsonSerializable()
class AuthResponse {
  const AuthResponse({
    required this.id,
    required this.firstName,
    required this.lastName,
    required this.email,
    required this.token,
  });

  final UserID id;
  final String firstName;
  final String lastName;
  final String email;
  final String token;

  factory AuthResponse.fromJson(JsonMap json) =>
      _$AuthResponseFromJson(json);

  JsonMap toJson() => _$AuthResponseToJson(this);
}
