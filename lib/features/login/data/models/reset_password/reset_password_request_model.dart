class ResetPasswordRequestModel {
  final int userId;
  final String otp;
  final String password;
  final String passwordConfirmation;

  ResetPasswordRequestModel({
    required this.userId,
    required this.otp,
    required this.password,
    required this.passwordConfirmation,
  });

  Map<String, dynamic> toJson() => {
        'user_id': userId,
        'otp': otp,
        'password': password,
        'password_confirmation': passwordConfirmation,
      };
}


