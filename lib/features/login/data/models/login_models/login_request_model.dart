import 'package:round_8_mobile_safarni_team4/features/login/domain/entites/login_request_entity.dart';

class LoginRequestModel extends LoginRequestEntity {
  LoginRequestModel({required super.email, required super.password});

  Map<String, dynamic> toJson() => {'email': email, 'password': password};
}
