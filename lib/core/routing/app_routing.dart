import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:round_8_mobile_safarni_team4/core/di/service_locator.dart';
import 'package:round_8_mobile_safarni_team4/core/routing/app_routes.dart';
import 'package:round_8_mobile_safarni_team4/features/car_booking/domain/entities/search_car_response_entity.dart';
import 'package:round_8_mobile_safarni_team4/features/filter/presentation/views/filter_view.dart';
import 'package:round_8_mobile_safarni_team4/features/flight_appointment/presentation/views/select_flight_view.dart';
import 'package:round_8_mobile_safarni_team4/features/login/presentation/manager/forget_password/forget_password_cubit.dart';
import 'package:round_8_mobile_safarni_team4/features/login/presentation/manager/login_cubit/login_cubit.dart';
import 'package:round_8_mobile_safarni_team4/features/login/presentation/manager/reset_password/reset_password_cubit.dart';
import 'package:round_8_mobile_safarni_team4/features/login/presentation/views/forget_password_view.dart';
import 'package:round_8_mobile_safarni_team4/features/login/presentation/views/login_view.dart';
import 'package:round_8_mobile_safarni_team4/features/login/presentation/views/set_new_password_view.dart';
import 'package:round_8_mobile_safarni_team4/features/login/presentation/views/success_reset_password_view.dart';
import 'package:round_8_mobile_safarni_team4/features/profile/presentation/manager/booking_type_cubit/booking_type_cubit.dart';
import 'package:round_8_mobile_safarni_team4/features/profile/presentation/manager/my_booking_cubit/my_booking_cubit.dart';
import 'package:round_8_mobile_safarni_team4/features/profile/presentation/manager/personal_info_cubit/personal_info_cubit.dart';
import 'package:round_8_mobile_safarni_team4/features/profile/presentation/view/my_booking_view.dart';
import 'package:round_8_mobile_safarni_team4/features/profile/presentation/view/personal_info_view.dart';
import 'package:round_8_mobile_safarni_team4/features/profile/presentation/view/profile_view.dart';
import 'package:round_8_mobile_safarni_team4/features/search/presentation/view/result_search.dart';
import 'package:round_8_mobile_safarni_team4/features/seat_selection/presentation/views/seat_selection_view.dart';
import 'package:round_8_mobile_safarni_team4/features/sign_up/domain/entities/verify_code_entity.dart/verify_code_request_entity.dart';
import 'package:round_8_mobile_safarni_team4/features/sign_up/presentation/manager/sign_up_cubit/sign_up_cubit.dart';
import 'package:round_8_mobile_safarni_team4/features/sign_up/presentation/manager/verify_code/verify_code_cubit.dart';
import 'package:round_8_mobile_safarni_team4/features/sign_up/presentation/views/sign_up_view.dart';
import 'package:round_8_mobile_safarni_team4/features/sign_up/presentation/views/verify_code_view.dart';
import 'package:round_8_mobile_safarni_team4/features/welcome/presentation/views/welcome_view.dart';

import '../../features/boarding_pass/presentation/views/boarding_pass_view.dart';
import '../../features/bottom_nav_bar/presentation/views/bottom_nav_bar.dart';
import '../../features/car_booking/presentation/views/car_booking.dart';
import '../../features/car_booking/presentation/views/car_details.dart';
import '../../features/car_booking/presentation/views/pick_up_details.dart';
import '../../features/compare/presentation/view/compare_view.dart';
import '../../features/destination/presentation/view/destination_view.dart';
import '../../features/favorite/presentation/view/favorite_view.dart';
import '../../features/flight_appointment/presentation/views/flight_booking_page.dart';
import '../../features/home/presentation/view/search_tour_view.dart';
import '../../features/payment/presentation/views/checkout_view.dart';
import '../../features/payment/presentation/views/payment_success_view.dart';
import '../../features/search/presentation/view/search_view.dart';

abstract class AppRouter {
  static Route<dynamic>? onGenerateRoute(RouteSettings routeSettings) {
    var name = routeSettings.name;
    var args = routeSettings.arguments;
    try {
      switch (name) {
        case AppRoutes.home:
          return MaterialPageRoute(builder: (context) => const BottomNavBar());

        // case AppRoutes.onboardingView:
        //   return MaterialPageRoute(
        //     builder: (context) => const OnboardingView(),
        //   );

        case AppRoutes.paymentMethod:
          return MaterialPageRoute(builder: (context) => const CheckoutView());

        case AppRoutes.paymentSuccess:
          return MaterialPageRoute(
            builder: (context) => const PaymentSuccessView(),
          );

        case AppRoutes.flightBooking:
          return MaterialPageRoute(
            builder: (context) => const FlightBookingPage(),
          );
        case AppRoutes.selectFlight:
          return MaterialPageRoute(
            builder: (context) => const SelectFlightView(),
          );
        case AppRoutes.seatSelection:
          return MaterialPageRoute(
            builder: (context) => const SeatSelectionView(),
          );

        case AppRoutes.carBooking:
          return MaterialPageRoute(
            builder: (context) => const CarBookingView(),
          );

        case AppRoutes.carDetails:
          return MaterialPageRoute(
            builder: (context) => CarDetailsView(model: args as CarEntity),
          );

        case AppRoutes.pickUpDetails:
          return MaterialPageRoute(
            builder: (context) => PickUpDetailsView(model: args as CarEntity),
          );

        case AppRoutes.welcomeView:
          return MaterialPageRoute(builder: (context) => const WelcomeView());

        case AppRoutes.loginView:
          return MaterialPageRoute(
            builder:
                (context) => BlocProvider<LoginCubit>(
                  create: (context) => getIt<LoginCubit>(),
                  child: const LoginView(),
                ),
          );

        case AppRoutes.signupView:
          return MaterialPageRoute(
            builder:
                (context) => BlocProvider<SignUpCubit>(
                  create: (context) => getIt<SignUpCubit>(),
                  child: const SignUpView(),
                ),
          );

        case AppRoutes.forgetPasswordView:
          return MaterialPageRoute(
            builder:
                (context) => BlocProvider<ForgetPasswordCubit>(
                  create: (context) => getIt<ForgetPasswordCubit>(),
                  child: const ForgetPasswordView(),
                ),
          );

        //SearchView

        case AppRoutes.SearchView:
          return MaterialPageRoute(builder: (context) => const SearchView());

        //ResultSearch
        case AppRoutes.ResultSearch:
          return MaterialPageRoute(builder: (context) => const ResultSearch());

        case AppRoutes.verifyCodeView:
          return MaterialPageRoute(
            builder:
                (context) => BlocProvider<VerifyCodeCubit>(
                  create: (context) => getIt<VerifyCodeCubit>(),
                  child: VerifyCodeView(
                    verifyCodeRequestEntity: args as VerifyCodeRequestEntity,
                  ),
                ),
          );

        case AppRoutes.setNewPasswordView:
          return MaterialPageRoute(
            builder:
                (context) => BlocProvider<ResetPasswordCubit>(
                  create: (context) => getIt<ResetPasswordCubit>(),
                  child: SetNewPasswordView(
                    verifyCodeRequestEntity: args as VerifyCodeRequestEntity,
                  ),
                ),
          );

        case AppRoutes.successResetPasswordView:
          return MaterialPageRoute(
            builder: (context) => const SuccessResetPasswordView(),
          );

        case AppRoutes.profileView:
          return MaterialPageRoute(builder: (context) => const ProfileView());

        case AppRoutes.boardingPass:
          return MaterialPageRoute(
            builder: (context) => const BoardingPassView(),
          );

        case AppRoutes.personalInfoView:
          return MaterialPageRoute(
            builder:
                (context) => BlocProvider<PersonalInfoCubit>(
                  create:
                      (context) =>
                          getIt<PersonalInfoCubit>()..loadUserProfile(),
                  child: const PersonalInfoView(),
                ),
          );

        //FilterView
        //FilterView
        case AppRoutes.FilterView:
          return MaterialPageRoute(builder: (context) => const FilterView());

        //DestinationView
        case AppRoutes.DestinationView:
          final int id = routeSettings.arguments as int;
          return MaterialPageRoute(
            builder: (context) => DestinationView(tourId: id),
          );
        //SearchTourView
        case AppRoutes.SearchTourView:
          return MaterialPageRoute(
            builder: (context) => const SearchTourView(),
          );
          return MaterialPageRoute(builder: (context) => const FilterView());
        case AppRoutes.myBookingView:
          return MaterialPageRoute(
            builder:
                (context) => MultiBlocProvider(
                  providers: [
                    BlocProvider<MyBookingCubit>(
                      create:
                          (context) =>
                              getIt<MyBookingCubit>()..loadBookings('Flight'),
                    ),
                    BlocProvider<BookingTypeCubit>(
                      create: (context) => getIt<BookingTypeCubit>(),
                    ),
                  ],
                  child: const MyBookingView(),
                ),
          );

        //CompareView
        case AppRoutes.CompareView:
          return MaterialPageRoute(builder: (context) => const CompareView());

        //FavoriteView
        case AppRoutes.FavoriteView:
          return MaterialPageRoute(builder: (context) => const FavoriteView());
        default:
          return _errorRoute();
      }
    } catch (e) {
      return _errorRoute();
    }
  }

  static Route<dynamic> _errorRoute() {
    return MaterialPageRoute(
      builder: (context) {
        return Material(
          child: Container(
            color: Colors.red,
            child: const Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Center(
                  child: Text(
                    "Error! You Have Navigated To A Wrong Route. Or Navigated With Wrong Arguments",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 30,
                      color: Colors.white,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }

  // static List<Route<dynamic>> onGenerateInitialRoutes({
  //   String? initialRoute,
  //   String? savedToken,
  // }) {
  //   return [
  //     if (savedToken != null)
  //       MaterialPageRoute(
  //         builder: (context) => const NavigationScreen(),
  //       ) // LayoutScreen()
  //     else
  //       MaterialPageRoute(builder: (context) => const OnboardingView()),
  //     // OnboardingScreen()
  //   ];
  // }
}
