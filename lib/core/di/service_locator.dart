import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:round_8_mobile_safarni_team4/features/hotel/data/api_serrvice/hotel_api_service.dart';
import 'package:round_8_mobile_safarni_team4/features/hotel/data/repo/hotel_repo.dart';
import 'package:round_8_mobile_safarni_team4/features/hotel/presentation/maneger/cubit/hotel_cubit.dart';


final getIt = GetIt.instance;

Future<void> setupLocator() async {
  // // --- [1] الأساسيات Core ---
  // getIt.registerSingletonAsync<ApiService>(
  //   () async => await ApiService.create(),
  // );
  // await getIt.isReady<ApiService>();

  // getIt.registerLazySingleton<Dio>(() => getIt<ApiService>().dio);

   /// Api Service
  getIt.registerLazySingleton<HotelApiService>(
    () => HotelApiService(getIt<Dio>()),
  );

  /// Repository
  getIt.registerLazySingleton<HotelRepository>(
    () => HotelRepository(getIt<HotelApiService>()),
  );

  /// Cubit
  getIt.registerFactory<HotelCubit>(
    () => HotelCubit(getIt<HotelRepository>()),
  );

  
  await getIt.allReady();
}
