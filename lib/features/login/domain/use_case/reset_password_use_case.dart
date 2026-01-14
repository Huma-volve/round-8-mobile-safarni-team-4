import 'package:dartz/dartz.dart';
import 'package:round_8_mobile_safarni_team4/core/failure/failures.dart';
import 'package:round_8_mobile_safarni_team4/core/use_case/use_case_with_param.dart';
import 'package:round_8_mobile_safarni_team4/features/login/domain/entites/reset_password_entity.dart';
import 'package:round_8_mobile_safarni_team4/features/login/domain/entites/reset_password_request_entity.dart';
import 'package:round_8_mobile_safarni_team4/features/login/domain/repos/login_repo.dart';

class ResetPasswordUseCase
    extends UseCase<ResetPasswordEntity, ResetPasswordRequestEntity> {
  final LoginRepo loginRepo;

  ResetPasswordUseCase({required this.loginRepo});

  @override
  Future<Either<Failure, ResetPasswordEntity>> call({
    required ResetPasswordRequestEntity param,
  }) async {
    return await loginRepo.resetPassword(
      resetPasswordRequestEntity: param,
    );
  }
}


