import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:round_8_mobile_safarni_team4/core/network/api_service.dart';
import 'package:round_8_mobile_safarni_team4/features/sign_up/data/data_sources/sign_up_remote_data_source.dart';
import 'package:round_8_mobile_safarni_team4/features/sign_up/data/data_sources/verify_code_remote_data_source.dart';
import 'package:round_8_mobile_safarni_team4/features/sign_up/data/repos/sign_up_repo_impl.dart';
import 'package:round_8_mobile_safarni_team4/features/sign_up/data/repos/verify_code_repo_impl.dart';
import 'package:round_8_mobile_safarni_team4/features/sign_up/domain/repos/sign_up_repo.dart';
import 'package:round_8_mobile_safarni_team4/features/sign_up/domain/repos/verify_code_repo.dart';
import 'package:round_8_mobile_safarni_team4/features/sign_up/domain/use_case/sign_up_use_case.dart';
import 'package:round_8_mobile_safarni_team4/features/sign_up/domain/use_case/verify_code_use_case.dart';
import 'package:round_8_mobile_safarni_team4/features/sign_up/presentation/manager/sign_up_cubit/sign_up_cubit.dart';
import 'package:round_8_mobile_safarni_team4/features/sign_up/presentation/manager/verify_code/verify_code_cubit.dart';

final getIt = GetIt.instance;

Future<void> setupLocator() async {
  // --- [1] الأساسيات Core ---
  getIt.registerSingletonAsync<ApiService>(
    () async => await ApiService.create(),
  );
  await getIt.isReady<ApiService>();

  getIt.registerLazySingleton<Dio>(() => getIt<ApiService>().dio);

  // --- [2] Authentication ---
  getIt.registerLazySingleton<SignUpRemoteDataSource>(
    () => SignUpRemoteDataSourceImpl(apiService: getIt<ApiService>()),
  );

  getIt.registerLazySingleton<SignUpRepo>(
    () =>
        SignUpRepoImpl(signUpRemoteDataSource: getIt<SignUpRemoteDataSource>()),
  );

  getIt.registerLazySingleton<SignUpUseCase>(
    () => SignUpUseCase(signUpRepo: getIt<SignUpRepo>()),
  );

  getIt.registerFactory<SignUpCubit>(
    () => SignUpCubit(signUpUseCase: getIt<SignUpUseCase>()),
  );

  getIt.registerLazySingleton<VerifyCodeRemoteDataSource>(
    () => VerifyCodeRemoteDataSourceImpl(apiService: getIt<ApiService>()),
  );

  getIt.registerLazySingleton<VerifyCodeRepo>(
    () => VerifyCodeRepoImpl(
      verifyCodeRemoteDataSource: getIt<VerifyCodeRemoteDataSource>(),
    ),
  );

  getIt.registerLazySingleton<VerifyCodeUseCase>(
    () => VerifyCodeUseCase(verifyCodeRepo: getIt<VerifyCodeRepo>()),
  );

  getIt.registerFactory<VerifyCodeCubit>(
    () => VerifyCodeCubit(verCodeUseCase: getIt<VerifyCodeUseCase>()),
  );

  // getIt.registerLazySingleton<LoginRepo>(
  //   () => loginRepoImple(getIt<LoginRemoteDataSource>()),
  // );
  // getIt.registerFactory<LoginCubit>(() => LoginCubit(getIt<LoginRepo>()));

  // getIt.registerLazySingleton<RegisterRemoteDataSource>(
  //   () => RegisterRemoteDataSource(getIt<ApiService>()),
  // );
  // getIt.registerFactory<RegisterRepo>(
  //   () => RegisterRepoImple(getIt<RegisterRemoteDataSource>()),
  // );
  // getIt.registerFactory<RegisterCubit>(
  //   () => RegisterCubit(getIt<RegisterRepo>()),
  // );
  await getIt.allReady();
}
