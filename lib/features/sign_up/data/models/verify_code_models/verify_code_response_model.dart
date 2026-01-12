import 'package:round_8_mobile_safarni_team4/features/sign_up/domain/entities/verify_code_entity.dart/user_entity.dart';

class VerifyCodeResponseModel extends UserEntity {
  const VerifyCodeResponseModel({
    required super.id,
    required super.fullName,
    required super.email,
    required super.token,
  });

  factory VerifyCodeResponseModel.fromJson(Map<String, dynamic> json) {
    final data = json['data']['user'] as Map<String, dynamic>;
    return VerifyCodeResponseModel(
      id: data['id'] as int,
      fullName: data['full_name'] as String, // تحويل من snake_case
      email: data['email'] as String,
      token: json['data']['token'] as String,
    );
  }
}
