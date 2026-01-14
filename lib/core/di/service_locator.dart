import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:round_8_mobile_safarni_team4/core/network/api_service.dart';
import 'package:round_8_mobile_safarni_team4/features/login/data/data_sources/login_remote_data_source.dart';
import 'package:round_8_mobile_safarni_team4/features/login/data/repos/login_repo_impl.dart';
import 'package:round_8_mobile_safarni_team4/features/login/domain/repos/login_repo.dart';
import 'package:round_8_mobile_safarni_team4/features/login/domain/use_case/forget_password_use_case.dart';
import 'package:round_8_mobile_safarni_team4/features/login/domain/use_case/login_use_case.dart';
import 'package:round_8_mobile_safarni_team4/features/login/domain/use_case/reset_password_use_case.dart';
import 'package:round_8_mobile_safarni_team4/features/login/presentation/manager/forget_password/forget_password_cubit.dart';
import 'package:round_8_mobile_safarni_team4/features/login/presentation/manager/login_cubit/login_cubit.dart';
import 'package:round_8_mobile_safarni_team4/features/login/presentation/manager/reset_password/reset_password_cubit.dart';
import 'package:round_8_mobile_safarni_team4/features/profile/data/data_sources/booking_remote_data_source.dart';
import 'package:round_8_mobile_safarni_team4/features/profile/data/data_sources/profile_remote_data_source.dart';
import 'package:round_8_mobile_safarni_team4/features/profile/data/repos/booking_repo_impl.dart';
import 'package:round_8_mobile_safarni_team4/features/profile/data/repos/profile_repo_impl.dart';
import 'package:round_8_mobile_safarni_team4/features/profile/domain/repos/booking_repo.dart';
import 'package:round_8_mobile_safarni_team4/features/profile/domain/repos/profile_repo.dart';
import 'package:round_8_mobile_safarni_team4/features/profile/domain/use_case/get_user_bookings_use_case.dart';
import 'package:round_8_mobile_safarni_team4/features/profile/domain/use_case/get_user_profile_use_case.dart';
import 'package:round_8_mobile_safarni_team4/features/profile/presentation/manager/booking_type_cubit/booking_type_cubit.dart';
import 'package:round_8_mobile_safarni_team4/features/profile/presentation/manager/my_booking_cubit/my_booking_cubit.dart';
import 'package:round_8_mobile_safarni_team4/features/profile/presentation/manager/personal_info_cubit/personal_info_cubit.dart';
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

import '../../features/car_booking/data/api/api_client/car_appointment_api_client.dart';
import '../../features/car_booking/data/datasource_contract/car_appointment_datasurce.dart';
import '../../features/car_booking/data/datasource_impl/car_appointment_datasource_impl.dart';
import '../../features/car_booking/data/repo_impl/car_appointment_repo_impl.dart';
import '../../features/car_booking/domain/repo_contract/car_appointment_repo.dart';
import '../../features/car_booking/domain/use_cases/search_car_use_case.dart';
import '../../features/car_booking/presentation/cubit/car_appointment_cubit.dart';
import '../../features/destination/data/api_service/tour_details_remote_data_source.dart';
import '../../features/destination/data/repo/destination_rpo.dart';
import '../../features/destination/domain/repo_imple/destination_repo_imple.dart';
import '../../features/destination/presentation/managers/destination_cubit/destination_cubit.dart';
import '../../features/home/data/api_service/home_remote_data_source.dart';
import '../../features/home/data/repo/home_repo.dart';
import '../../features/home/domain/repo_imple/home_repo_impe.dart';
import '../../features/home/presentation/managers/home_cubit/home_cubit.dart';
import '../api/api_error_handler.dart';

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

  getIt.registerLazySingleton<LoginRemoteDataSource>(
    () => LoginRemoteDataSourceImpl(apiService: getIt<ApiService>()),
  );

  getIt.registerLazySingleton<LoginRepo>(
    () => LoginRepoImpl(loginRemoteDataSource: getIt<LoginRemoteDataSource>()),
  );

  getIt.registerLazySingleton<LoginUseCase>(
    () => LoginUseCase(loginRepo: getIt<LoginRepo>()),
  );

  getIt.registerFactory<LoginCubit>(
    () => LoginCubit(loginUseCase: getIt<LoginUseCase>()),
  );
  // --- Home ---
  getIt.registerLazySingleton<HomeRemoteDataSource>(
    () => HomeRemoteDataSource(getIt<ApiService>()),
  );
  getIt.registerLazySingleton<HomeRepo>(
    () => HomeRepoImpl(getIt<HomeRemoteDataSource>()),
  );
  getIt.registerFactory<HomeCubit>(() => HomeCubit(getIt<HomeRepo>()));
  //-------------------------------------------------------------
  // --- [2] Destination (الجزء الجديد) ---
  getIt.registerLazySingleton<DestinationRemoteDataSource>(
    () => DestinationRemoteDataSourceImpl(getIt<ApiService>()),
  );

  getIt.registerLazySingleton<DestinationRepo>(
    () => DestinationRepoImpl(getIt<DestinationRemoteDataSource>()),
  );

  // نستخدم registerFactory لأن الـ Cubit يتم إنشاؤه وإغلاقه مع كل صفحة جديدة
  getIt.registerFactory<DestinationCubit>(
    () => DestinationCubit(getIt<DestinationRepo>()),
  );
  getIt.registerLazySingleton<ForgetPasswordUseCase>(
    () => ForgetPasswordUseCase(loginRepo: getIt<LoginRepo>()),
  );

  getIt.registerFactory<ForgetPasswordCubit>(
    () => ForgetPasswordCubit(
      forgetPasswordUseCase: getIt<ForgetPasswordUseCase>(),
    ),
  );

  getIt.registerLazySingleton<ResetPasswordUseCase>(
    () => ResetPasswordUseCase(loginRepo: getIt<LoginRepo>()),
  );

  getIt.registerFactory<ResetPasswordCubit>(
    () =>
        ResetPasswordCubit(resetPasswordUseCase: getIt<ResetPasswordUseCase>()),
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

  // --- [3] Car Appointment ---

  getIt.registerLazySingleton<CarAppointmentApiClient>(
    () => CarAppointmentApiClient(getIt<Dio>()),
  );
  getIt.registerLazySingleton<CarAppointmentDatasource>(
    () => CarAppointmentDatasourceImpl(getIt<CarAppointmentApiClient>()),
  );
  getIt.registerLazySingleton<CarAppointmentRepo>(
    () => CarAppointmentRepoImpl(getIt<CarAppointmentDatasource>()),
  );
  getIt.registerLazySingleton<SearchCarUseCase>(
    () => SearchCarUseCase(getIt<CarAppointmentRepo>()),
  );
  getIt.registerFactory<CarAppointmentCubit>(
    () => CarAppointmentCubit(getIt<SearchCarUseCase>()),
  );
  getIt.registerLazySingleton<ApiErrorHandler>(() => ApiErrorHandler());

  // --- [4] My Booking ---
  getIt.registerLazySingleton<BookingRemoteDataSource>(
    () => BookingRemoteDataSourceImpl(apiService: getIt<ApiService>()),
  );
  getIt.registerLazySingleton<BookingRepo>(
    () => BookingRepoImpl(
      bookingRemoteDataSource: getIt<BookingRemoteDataSource>(),
    ),
  );
  getIt.registerLazySingleton<GetUserBookingsUseCase>(
    () => GetUserBookingsUseCase(bookingRepo: getIt<BookingRepo>()),
  );
  getIt.registerFactory<MyBookingCubit>(
    () =>
        MyBookingCubit(getUserBookingsUseCase: getIt<GetUserBookingsUseCase>()),
  );
  getIt.registerFactory<BookingTypeCubit>(() => BookingTypeCubit());

  // --- [5] Personal Info ---
  getIt.registerLazySingleton<ProfileRemoteDataSource>(
    () => ProfileRemoteDataSourceImpl(dio: getIt<Dio>()),
  );
  getIt.registerLazySingleton<ProfileRepo>(
    () => ProfileRepoImpl(
      profileRemoteDataSource: getIt<ProfileRemoteDataSource>(),
    ),
  );
  getIt.registerLazySingleton<GetUserProfileUseCase>(
    () => GetUserProfileUseCase(profileRepo: getIt<ProfileRepo>()),
  );
  getIt.registerFactory<PersonalInfoCubit>(
    () => PersonalInfoCubit(
      getUserProfileUseCase: getIt<GetUserProfileUseCase>(),
    ),
  );
  await getIt.allReady();
}
