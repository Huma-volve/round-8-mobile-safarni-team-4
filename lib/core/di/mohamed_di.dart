
import 'package:dio/dio.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';
import 'package:round_8_mobile_safarni_team4/core/network/api_end_points.dart';
import 'package:get_it/get_it.dart';
import 'package:round_8_mobile_safarni_team4/core/network/tocken_storage_service.dart';
import 'package:round_8_mobile_safarni_team4/features/favorite/data/data_source/favorite_remote_data_source.dart';
import 'package:round_8_mobile_safarni_team4/features/favorite/data/repo/favorite_repo.dart';
import 'package:round_8_mobile_safarni_team4/features/favorite/presentation/maneger/favorite_cubit/favorites_cubit.dart';
import 'package:round_8_mobile_safarni_team4/features/hotel/data/api_serrvice/hotel_api_service.dart';
import 'package:round_8_mobile_safarni_team4/features/hotel/data/repo/hotel_repo.dart';
import 'package:round_8_mobile_safarni_team4/features/hotel/presentation/maneger/hotel/hotel_cubit.dart';
import 'package:round_8_mobile_safarni_team4/features/hotel/presentation/maneger/hotel_available_rooms/hotel_availables_room_cubit.dart';

final getIt = GetIt.instance;

Future<void> setupDependencies() async {
  getIt.registerLazySingleton<Dio>(() {
    final dio = Dio(BaseOptions(
      baseUrl: ApiEndPoints.baseUrl,
      connectTimeout: const Duration(seconds: 30),
      receiveTimeout: const Duration(seconds: 30),
      headers: {
        'Accept': 'application/json',
        'Content-Type': 'application/json',
        "Authorization": "Bearer 2|Uok1Jxsa3nZjl4JAgK9id2v1fWEltZbGy1jishLqb7688efc",
        // لو عايز تضيف Authorization token هنا أو في interceptor
      },
    ));

    // Logger للـ development (يظهر الـ requests/responses)
    dio.interceptors.add(
      PrettyDioLogger(
        requestHeader: true,
        requestBody: true,
        responseBody: true,
        responseHeader: false,
        error: true,
        compact: true,
      ),
    );

    return dio;
  });

  getIt.registerLazySingleton<TokenStorageService>(
  () => TokenStorageService(),
);

  getIt.registerLazySingleton<HotelApiService>(
    () => HotelApiService(getIt<Dio>()),
  );

  getIt.registerLazySingleton<HotelRepository>(
    () => HotelRepository(getIt<HotelApiService>()),
  );

  getIt.registerFactory<HotelCubit>(
    () => HotelCubit(getIt<HotelRepository>()),
  );
  getIt.registerLazySingleton<FavoriteRemoteDataSource>(
    () => FavoriteRemoteDataSource(getIt<Dio>()),
  );

  getIt.registerLazySingleton<FavoriteRepo>(
    () => FavoriteRepo(getIt<FavoriteRemoteDataSource>()),
  );

  getIt.registerFactory<FavoritesCubit>(
    () => FavoritesCubit(getIt<FavoriteRepo>()),
  );
 getIt.registerFactory<HotelAvailableRoomsCubit>(
    () => HotelAvailableRoomsCubit(getIt<HotelRepository>()),
  );


}