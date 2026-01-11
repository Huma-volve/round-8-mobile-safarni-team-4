import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:round_8_mobile_safarni_team4/core/network/api_service.dart';


final getIt = GetIt.instance;

Future<void> setupLocator() async {
  // --- [1] الأساسيات Core ---
  getIt.registerSingletonAsync<ApiService>(
    () async => await ApiService.create(),
  );
  await getIt.isReady<ApiService>();

  getIt.registerLazySingleton<Dio>(() => getIt<ApiService>().dio);

  // --- [2] Authentication ---
  // getIt.registerLazySingleton<LoginRemoteDataSource>(
  //   () => LoginRemoteDataSource(getIt<ApiService>()),
  // );
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
