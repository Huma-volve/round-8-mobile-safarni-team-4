import 'package:round_8_mobile_safarni_team4/core/network/api_end_points.dart';
import 'package:round_8_mobile_safarni_team4/core/network/api_service.dart';
import 'package:round_8_mobile_safarni_team4/features/login/data/models/login_models/login_request_model.dart';
import 'package:round_8_mobile_safarni_team4/features/login/data/models/login_models/login_response_model.dart';
import 'package:round_8_mobile_safarni_team4/features/login/domain/entites/login_entites/login_request_entity.dart';
import 'package:round_8_mobile_safarni_team4/features/sign_up/domain/entities/verify_code_entity.dart/user_data_entity.dart';

abstract class LoginRemoteDataSource {
  Future<UserDataEntity> login({
    required LoginRequestEntity loginRequestEntity,
  });
}

class LoginRemoteDataSourceImpl implements LoginRemoteDataSource {
  final ApiService apiService;

  LoginRemoteDataSourceImpl({required this.apiService});
  @override
  Future<UserDataEntity> login({
    required LoginRequestEntity loginRequestEntity,
  }) async {
    final response = await apiService.post(
      urlEndPoint: ApisEndpoints.login,
      data:
          LoginRequestModel(
            email: loginRequestEntity.email,
            password: loginRequestEntity.password,
          ).toJson(),
    );
    return LoginResponseModel.fromJson(response);
  }
}
