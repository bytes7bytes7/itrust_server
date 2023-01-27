class AuthResult {
  AuthResult({
    required this.id,
    required this.firstName,
    required this.lastName,
    required this.email,
    required this.token,
  });

  final String id;
  final String firstName;
  final String lastName;
  final String email;
  final String token;
}
