
import 'package:dio/dio.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';
import 'package:round_8_mobile_safarni_team4/core/network/api_end_points.dart';
import 'package:get_it/get_it.dart';
import 'package:round_8_mobile_safarni_team4/features/hotel/data/api_serrvice/hotel_api_service.dart';
import 'package:round_8_mobile_safarni_team4/features/hotel/data/repo/hotel_repo.dart';
import 'package:round_8_mobile_safarni_team4/features/hotel/presentation/maneger/cubit/hotel_cubit.dart';

final getIt = GetIt.instance;

Future<void> setupDependencies() async {
  // 1. Dio - الـ HTTP client
  getIt.registerLazySingleton<Dio>(() {
    final dio = Dio(BaseOptions(
      baseUrl: ApiEndPoints.baseUrl,
      connectTimeout: const Duration(seconds: 30),
      receiveTimeout: const Duration(seconds: 30),
      headers: {
        'Accept': 'application/json',
        'Content-Type': 'application/json',
        "Authorization": "Bearer Token",
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

  // 2. PaymentWebService - Retrofit client
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
}