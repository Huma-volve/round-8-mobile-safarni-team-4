import 'package:round_8_mobile_safarni_team4/features/login/domain/entites/reset_password_entity.dart';

class ResetPasswordResponseModel extends ResetPasswordEntity {
  ResetPasswordResponseModel({required super.message});

  factory ResetPasswordResponseModel.fromJson(Map<String, dynamic> json) {
    return ResetPasswordResponseModel(
      message: json['message']?.toString() ?? '',
    );
  }
}



