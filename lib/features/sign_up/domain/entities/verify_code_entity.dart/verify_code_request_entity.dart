class VerifyCodeRequestEntity {
  final String email;
  final int userId;
  final String otp;
  final bool isForgetPassword;

  VerifyCodeRequestEntity({
    required this.userId,
    required this.otp,
    required this.email,  this.isForgetPassword = false,
  });
}
