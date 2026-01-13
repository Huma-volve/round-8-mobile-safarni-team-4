import 'package:dartz/dartz.dart';
import 'package:round_8_mobile_safarni_team4/core/failure/failures.dart';
import 'package:round_8_mobile_safarni_team4/core/use_case/use_case_with_param.dart';
import 'package:round_8_mobile_safarni_team4/features/sign_up/domain/entities/verify_code_entity.dart/user_data_entity.dart';
import 'package:round_8_mobile_safarni_team4/features/sign_up/domain/entities/verify_code_entity.dart/verify_code_request_entity.dart';
import 'package:round_8_mobile_safarni_team4/features/sign_up/domain/repos/verify_code_repo.dart';

class VerifyCodeUseCase
    extends UseCase<UserDataEntity, VerifyCodeRequestEntity> {
  final VerifyCodeRepo verifyCodeRepo;
  VerifyCodeUseCase({required this.verifyCodeRepo});
  @override
  Future<Either<Failure, UserDataEntity>> call({
    required VerifyCodeRequestEntity param,
  }) async {
    return await verifyCodeRepo.verifyCode(verifyCodeRequestEntity: param);
  }
}
