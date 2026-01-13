import 'package:round_8_mobile_safarni_team4/core/network/api_end_points.dart';
import 'package:round_8_mobile_safarni_team4/core/network/api_service.dart';
import 'package:round_8_mobile_safarni_team4/features/sign_up/data/models/verify_code_models/verify_code_request_model.dart';
import 'package:round_8_mobile_safarni_team4/features/sign_up/data/models/verify_code_models/verify_code_response_model.dart';
import 'package:round_8_mobile_safarni_team4/features/sign_up/domain/entities/verify_code_entity.dart/user_data_entity.dart';
import 'package:round_8_mobile_safarni_team4/features/sign_up/domain/entities/verify_code_entity.dart/verify_code_request_entity.dart';

abstract class VerifyCodeRemoteDataSource {
  Future<UserDataEntity> verifyCode({
    required VerifyCodeRequestEntity verifyCodeRequestEntity,
  });
}

class VerifyCodeRemoteDataSourceImpl implements VerifyCodeRemoteDataSource {
  final ApiService apiService;

  VerifyCodeRemoteDataSourceImpl({required this.apiService});
  @override
  Future<UserDataEntity> verifyCode({
    required VerifyCodeRequestEntity verifyCodeRequestEntity,
  }) async {
    final response = await apiService.post(
      urlEndPoint: ApisEndpoints.verifyCode,
      data:
          VerifyCodeRequestModel(
            userId: verifyCodeRequestEntity.userId,
            otp: verifyCodeRequestEntity.otp,
            email: verifyCodeRequestEntity.email,
          ).toJson(),
    );
    return VerifyCodeResponseModel.fromJson(response);
  }
}
