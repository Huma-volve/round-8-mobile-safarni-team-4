class ResetPasswordRequestEntity {
  final int userId;
  final String otp;
  final String password;
  final String confirmPassword;

  ResetPasswordRequestEntity({
    required this.userId,
    required this.otp,
    required this.password,
    required this.confirmPassword,
  });
}


