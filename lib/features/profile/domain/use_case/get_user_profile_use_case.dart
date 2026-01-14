import 'package:dartz/dartz.dart';
import 'package:round_8_mobile_safarni_team4/core/failure/failures.dart';
import 'package:round_8_mobile_safarni_team4/core/use_case/use_case.dart';
import 'package:round_8_mobile_safarni_team4/features/profile/domain/entities/user_profile_entity.dart';
import 'package:round_8_mobile_safarni_team4/features/profile/domain/repos/profile_repo.dart';

class GetUserProfileUseCase extends UseCase<UserProfileEntity> {
  final ProfileRepo profileRepo;

  GetUserProfileUseCase({required this.profileRepo});

  @override
  Future<Either<Failure, UserProfileEntity>> call() async {
    return await profileRepo.getUserProfile();
  }
}
