import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:round_8_mobile_safarni_team4/core/failure/failures.dart';
import 'package:round_8_mobile_safarni_team4/features/sign_up/data/data_sources/verify_code_remote_data_source.dart';
import 'package:round_8_mobile_safarni_team4/features/sign_up/domain/entities/verify_code_entity.dart/user_data_entity.dart';
import 'package:round_8_mobile_safarni_team4/features/sign_up/domain/entities/verify_code_entity.dart/verify_code_request_entity.dart';
import 'package:round_8_mobile_safarni_team4/features/sign_up/domain/repos/verify_code_repo.dart';

class VerifyCodeRepoImpl extends VerifyCodeRepo {
  final VerifyCodeRemoteDataSource verifyCodeRemoteDataSource;

  VerifyCodeRepoImpl({required this.verifyCodeRemoteDataSource});

  @override
  Future<Either<Failure, UserDataEntity>> verifyCode({
    required VerifyCodeRequestEntity verifyCodeRequestEntity,
  }) async {
    try {
      final response = await verifyCodeRemoteDataSource.verifyCode(
        verifyCodeRequestEntity: verifyCodeRequestEntity,
      );
      return Right(response);
    } on DioException catch (error) {
      return Left(ServerFailure.fromDioException(error));
    } catch (error) {
      return Left(ServerFailure(error.toString()));
    }
  }
}
