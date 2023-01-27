import 'package:freezed_annotation/freezed_annotation.dart';

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

  factory AuthResponse.fromJson(Map<String, Object?> json) =>
      _$AuthResponseFromJson(json);

  Map<String, Object?> toJson() => _$AuthResponseToJson(this);
}
