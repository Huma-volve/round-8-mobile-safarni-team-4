import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:round_8_mobile_safarni_team4/core/failure/failures.dart';
import 'package:round_8_mobile_safarni_team4/features/login/data/data_sources/login_remote_data_source.dart';
import 'package:round_8_mobile_safarni_team4/features/login/domain/entites/login_entites/login_request_entity.dart';
import 'package:round_8_mobile_safarni_team4/features/login/domain/repos/login_repo.dart';
import 'package:round_8_mobile_safarni_team4/features/sign_up/domain/entities/verify_code_entity.dart/user_data_entity.dart';

class LoginRepoImpl extends LoginRepo {
  final LoginRemoteDataSource loginRemoteDataSource;

  LoginRepoImpl({required this.loginRemoteDataSource});

  @override
  Future<Either<Failure, UserDataEntity>> login({
    required LoginRequestEntity loginRequestEntity,
  }) async {
    try {
      final result = await loginRemoteDataSource.login(
        loginRequestEntity: loginRequestEntity,
      );
      return Right(result);
    } on DioException catch (e) {
      return Left(ServerFailure.fromDioException(e));
    } catch (e) {
      return Left(ServerFailure(e.toString()));
    }
  }
}
