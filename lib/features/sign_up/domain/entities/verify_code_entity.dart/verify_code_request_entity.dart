class VerifyCodeRequestEntity {
  final String email;
  final int userId;
  final String otp;

  VerifyCodeRequestEntity({
    required this.userId,
    required this.otp,
    required this.email,
  });
}
