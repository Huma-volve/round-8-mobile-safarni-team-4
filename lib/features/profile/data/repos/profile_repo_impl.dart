import 'package:dartz/dartz.dart';
import 'package:round_8_mobile_safarni_team4/core/failure/failures.dart';
import 'package:round_8_mobile_safarni_team4/features/profile/data/data_sources/profile_remote_data_source.dart';
import 'package:round_8_mobile_safarni_team4/features/profile/domain/entities/user_profile_entity.dart';
import 'package:round_8_mobile_safarni_team4/features/profile/domain/repos/profile_repo.dart';

class ProfileRepoImpl implements ProfileRepo {
  final ProfileRemoteDataSource profileRemoteDataSource;

  ProfileRepoImpl({required this.profileRemoteDataSource});

  @override
  Future<Either<Failure, UserProfileEntity>> getUserProfile() async {
    try {
      final result = await profileRemoteDataSource.getUserProfile();
      return Right(result);
    } catch (e) {
      return Left(ServerFailure(e.toString()));
    }
  }
}
