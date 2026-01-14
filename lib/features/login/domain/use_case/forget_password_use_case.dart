import 'package:dartz/dartz.dart';
import 'package:round_8_mobile_safarni_team4/core/failure/failures.dart';
import 'package:round_8_mobile_safarni_team4/core/use_case/use_case_with_param.dart';
import 'package:round_8_mobile_safarni_team4/features/login/domain/entites/forget_password_entity.dart';
import 'package:round_8_mobile_safarni_team4/features/login/domain/repos/login_repo.dart';

class ForgetPasswordUseCase extends UseCase<ForgetPasswordEntity, String> {
  final LoginRepo loginRepo;

  ForgetPasswordUseCase({required this.loginRepo});
  @override
  Future<Either<Failure, ForgetPasswordEntity>> call({
    required String param,
  }) async {
    return await loginRepo.forgetPassword(email: param);
  }
}
