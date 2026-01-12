import 'package:round_8_mobile_safarni_team4/features/sign_up/domain/entities/sign_up_entites/sign_up_response_entity.dart';

class SignUpResponseModel extends SignUpResponseEntity {
  SignUpResponseModel({required super.userId, required super.message});

  factory SignUpResponseModel.fromJson(Map<String, dynamic> json) {
    final data = json['data'] as Map<String, dynamic>;
    return SignUpResponseModel(
      userId: data['user_id'],
      message: data['message'],
    );
  }
}
