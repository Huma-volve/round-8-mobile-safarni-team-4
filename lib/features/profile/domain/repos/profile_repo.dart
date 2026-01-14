import 'package:dartz/dartz.dart';
import 'package:round_8_mobile_safarni_team4/core/failure/failures.dart';
import 'package:round_8_mobile_safarni_team4/features/profile/domain/entities/user_profile_entity.dart';

abstract class ProfileRepo {
  Future<Either<Failure, UserProfileEntity>> getUserProfile();
}
