import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:round_8_mobile_safarni_team4/core/failure/failures.dart';
import 'package:round_8_mobile_safarni_team4/features/sign_up/data/data_sources/sign_up_remote_data_source.dart';
import 'package:round_8_mobile_safarni_team4/features/sign_up/domain/entities/otp_request_entity.dart';
import 'package:round_8_mobile_safarni_team4/features/sign_up/domain/entities/sign_up_entity.dart';
import 'package:round_8_mobile_safarni_team4/features/sign_up/domain/repos/sign_up_repo.dart';

class SignUpRepoImpl extends SignUpRepo {
  final SignUpRemoteDataSource signUpRemoteDataSource;

  SignUpRepoImpl({required this.signUpRemoteDataSource});
  @override
  Future<Either<Failure, SignUpResponseEntity>> signUp(
    SignUpRequestEntity signUpRequestEntity,
  ) async {
    try {
      final response = await signUpRemoteDataSource.signUp(signUpRequestEntity);
      return Right(response);
    } on DioException catch (error) {
      return Left(ServerFailure.fromDioException(error));
    } catch (error) {
      return Left(ServerFailure(error.toString()));
    }
  }
}
