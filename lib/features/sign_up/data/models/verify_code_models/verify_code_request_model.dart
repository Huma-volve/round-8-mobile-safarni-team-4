import 'package:round_8_mobile_safarni_team4/features/sign_up/domain/entities/verify_code_entity.dart/verify_code_request_entity.dart';

class VerifyCodeRequestModel extends VerifyCodeRequestEntity {
  VerifyCodeRequestModel({
    required super.otp,
    required super.userId,
    required super.email,
  });

  Map<String, dynamic> toJson() => {'user_id': userId, 'otp': otp};
}
