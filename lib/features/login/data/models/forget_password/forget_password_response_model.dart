import 'package:round_8_mobile_safarni_team4/features/login/domain/entites/forget_password_entity.dart';

class ForgetPasswordResponseModel extends ForgetPasswordEntity {
  ForgetPasswordResponseModel({required super.userId});

  factory ForgetPasswordResponseModel.fromJson(Map<String, dynamic> json) {
    return ForgetPasswordResponseModel(userId: json['data']['user_id']);
  }
}
