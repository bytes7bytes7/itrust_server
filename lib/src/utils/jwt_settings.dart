class JwtSettings {
  const JwtSettings({
    required this.secret,
    required this.issuer,
    required this.expiresInMins,
    required this.audience,
  });

  final String secret;
  final String issuer;
  final int expiresInMins;
  final String audience;
}
