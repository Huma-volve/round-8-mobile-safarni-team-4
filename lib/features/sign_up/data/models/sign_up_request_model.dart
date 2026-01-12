import 'package:round_8_mobile_safarni_team4/features/sign_up/domain/entities/sign_up_entites/sign_up_request_entity.dart';

class SignUpRequestModel extends SignUpRequestEntity {
  SignUpRequestModel({
    required super.fullName,
    required super.email,
    required super.password,
    required super.confirmPassword,
  });

  Map<String, dynamic> toJson() => {
    'full_name': fullName,
    'email': email,
    'password': password,
    'password_confirmation': confirmPassword,
  };
}
