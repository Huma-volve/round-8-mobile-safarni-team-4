import 'package:dartz/dartz.dart';
import 'package:round_8_mobile_safarni_team4/core/failure/failures.dart';
import 'package:round_8_mobile_safarni_team4/core/use_case/use_case_with_param.dart';
import 'package:round_8_mobile_safarni_team4/features/login/domain/entites/login_entites/login_request_entity.dart';
import 'package:round_8_mobile_safarni_team4/features/login/domain/repos/login_repo.dart';
import 'package:round_8_mobile_safarni_team4/features/sign_up/domain/entities/verify_code_entity.dart/user_data_entity.dart';

class LoginUseCase extends UseCase<UserDataEntity, LoginRequestEntity> {
  final LoginRepo loginRepo;
  LoginUseCase({required this.loginRepo});

  @override
  Future<Either<Failure, UserDataEntity>> call({
    required LoginRequestEntity param,
  }) async {
    return await loginRepo.login(loginRequestEntity: param);
  }
}
