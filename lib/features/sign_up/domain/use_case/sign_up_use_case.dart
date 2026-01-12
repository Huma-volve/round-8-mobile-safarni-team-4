import 'package:dartz/dartz.dart';
import 'package:round_8_mobile_safarni_team4/core/failure/failures.dart';
import 'package:round_8_mobile_safarni_team4/core/use_case/use_case_with_param.dart';
import 'package:round_8_mobile_safarni_team4/features/sign_up/domain/entities/sign_up_entites/sign_up_response_entity.dart';
import 'package:round_8_mobile_safarni_team4/features/sign_up/domain/entities/sign_up_entites/sign_up_request_entity.dart';
import 'package:round_8_mobile_safarni_team4/features/sign_up/domain/repos/sign_up_repo.dart';

class SignUpUseCase extends UseCase<SignUpResponseEntity, SignUpRequestEntity> {
  final SignUpRepo signUpRepo;

  SignUpUseCase({required this.signUpRepo});

  @override
  Future<Either<Failure, SignUpResponseEntity>> call({
    required SignUpRequestEntity param,
  }) async {
    return await signUpRepo.signUp(param);
  }
}
