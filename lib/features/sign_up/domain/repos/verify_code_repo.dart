import 'package:dartz/dartz.dart';
import 'package:round_8_mobile_safarni_team4/core/failure/failures.dart';
import 'package:round_8_mobile_safarni_team4/features/sign_up/domain/entities/verify_code_entity.dart/user_data_entity.dart';
import 'package:round_8_mobile_safarni_team4/features/sign_up/domain/entities/verify_code_entity.dart/verify_code_request_entity.dart';

abstract class VerifyCodeRepo {
  Future<Either<Failure, UserDataEntity>> verifyCode({
    required VerifyCodeRequestEntity verifyCodeRequestEntity,
  });
}
