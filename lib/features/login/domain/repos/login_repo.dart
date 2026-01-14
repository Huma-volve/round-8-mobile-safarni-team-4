import 'package:dartz/dartz.dart';
import 'package:round_8_mobile_safarni_team4/core/failure/failures.dart';
import 'package:round_8_mobile_safarni_team4/features/login/domain/entites/forget_password_entity.dart';
import 'package:round_8_mobile_safarni_team4/features/login/domain/entites/login_request_entity.dart';
import 'package:round_8_mobile_safarni_team4/features/login/domain/entites/reset_password_entity.dart';
import 'package:round_8_mobile_safarni_team4/features/login/domain/entites/reset_password_request_entity.dart';
import 'package:round_8_mobile_safarni_team4/features/sign_up/domain/entities/verify_code_entity.dart/user_data_entity.dart';

abstract class LoginRepo {
  Future<Either<Failure, UserDataEntity>> login({
    required LoginRequestEntity loginRequestEntity,
  });

  Future<Either<Failure, ForgetPasswordEntity>> forgetPassword({
    required String email,
  });

  Future<Either<Failure, ResetPasswordEntity>> resetPassword({
    required ResetPasswordRequestEntity resetPasswordRequestEntity,
  });
}
