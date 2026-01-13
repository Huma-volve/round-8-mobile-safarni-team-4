import 'package:round_8_mobile_safarni_team4/core/network/api_end_points.dart';
import 'package:round_8_mobile_safarni_team4/core/network/api_service.dart';
import 'package:round_8_mobile_safarni_team4/features/sign_up/data/models/sign_up_request_model.dart';
import 'package:round_8_mobile_safarni_team4/features/sign_up/data/models/sign_up_response_model.dart';
import 'package:round_8_mobile_safarni_team4/features/sign_up/domain/entities/sign_up_entites/sign_up_response_entity.dart';
import 'package:round_8_mobile_safarni_team4/features/sign_up/domain/entities/sign_up_entites/sign_up_request_entity.dart';

abstract class SignUpRemoteDataSource {
  Future<SignUpResponseEntity> signUp(SignUpRequestEntity signUpRequestEntity);
}

class SignUpRemoteDataSourceImpl implements SignUpRemoteDataSource {
  final ApiService apiService;

  SignUpRemoteDataSourceImpl({required this.apiService});

  @override
  Future<SignUpResponseEntity> signUp(
    SignUpRequestEntity signUpRequestEntity,
  ) async {
    final response = await apiService.post(
      urlEndPoint: ApisEndpoints.signUp,
      data:
          SignUpRequestModel(
            fullName: signUpRequestEntity.fullName,
            email: signUpRequestEntity.email,
            password: signUpRequestEntity.password,
            confirmPassword: signUpRequestEntity.confirmPassword,
          ).toJson(),
    );
    return SignUpResponseModel.fromJson(response);
  }
}
