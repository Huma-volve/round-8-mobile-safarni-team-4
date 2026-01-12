import 'package:dartz/dartz.dart';
import 'package:round_8_mobile_safarni_team4/core/failure/failures.dart';
import 'package:round_8_mobile_safarni_team4/features/sign_up/domain/entities/otp_request_entity.dart';
import 'package:round_8_mobile_safarni_team4/features/sign_up/domain/entities/sign_up_entity.dart';

abstract class SignUpRepo {
  Future<Either<Failure, SignUpResponseEntity>> signUp(
    SignUpRequestEntity signUpRequestEntity,
  );
}
