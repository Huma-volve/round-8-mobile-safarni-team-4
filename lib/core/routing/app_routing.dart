import 'package:flutter/material.dart';
import 'package:round_8_mobile_safarni_team4/core/routing/app_routes.dart';
import 'package:round_8_mobile_safarni_team4/features/filter/presentation/views/filter_view.dart';
import 'package:round_8_mobile_safarni_team4/features/flight_appointment/presentation/views/select_flight_view.dart';
import 'package:round_8_mobile_safarni_team4/features/login/presentation/views/forget_password_view.dart';
import 'package:round_8_mobile_safarni_team4/features/login/presentation/views/login_view.dart';
import 'package:round_8_mobile_safarni_team4/features/login/presentation/views/set_new_password_view.dart';
import 'package:round_8_mobile_safarni_team4/features/login/presentation/views/success_reset_password_view.dart';
import 'package:round_8_mobile_safarni_team4/features/login/presentation/views/verify_code_view.dart';
import 'package:round_8_mobile_safarni_team4/features/profile/presentation/view/personal_info_view.dart';
import 'package:round_8_mobile_safarni_team4/features/profile/presentation/view/profile_view.dart';
import 'package:round_8_mobile_safarni_team4/features/search/presentation/view/result_search.dart';
import 'package:round_8_mobile_safarni_team4/features/sign_up/presentation/views/sign_up_view.dart';
import 'package:round_8_mobile_safarni_team4/features/welcome/presentation/views/welcome_view.dart';
import 'package:round_8_mobile_safarni_team4/features/seat_selection/presentation/views/seat_selection_view.dart';
import 'package:round_8_mobile_safarni_team4/features/home/presentation/view/home_view.dart';
import '../../features/car_booking/presentation/views/car_booking.dart';
import '../../features/car_booking/presentation/views/car_details.dart';
import '../../features/destination/presentation/view/destination_view.dart';
import '../../features/flight_appointment/presentation/views/flight_booking_page.dart';
import '../../features/home/presentation/view/search_tour_view.dart';
import '../../features/onboarding/view/onboarding_view.dart';
import '../../features/payment/presentation/views/checkout_view.dart';
import '../../features/payment/presentation/views/payment_success_view.dart';
import '../../features/boarding_pass/presentation/views/boarding_pass_view.dart';
import '../../features/search/presentation/view/search_view.dart';

abstract class AppRouter {
  static Route<dynamic>? onGenerateRoute(RouteSettings routeSettings) {
    var name = routeSettings.name;
    try {
      switch (name) {
        case AppRoutes.home:
          return MaterialPageRoute(builder: (context) => HomeView());

        case AppRoutes.onboardingView:
          return MaterialPageRoute(
            builder: (context) => const OnboardingView(),
          );

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
            builder: (context) => const CarDetailsView(),
          );

        case AppRoutes.welcomeView:
          return MaterialPageRoute(builder: (context) => const WelcomeView());

        case AppRoutes.loginView:
          return MaterialPageRoute(builder: (context) => const LoginView());

        case AppRoutes.signupView:
          return MaterialPageRoute(builder: (context) => const SignUpView());

        case AppRoutes.forgetPasswordView:
          return MaterialPageRoute(
            builder: (context) => const ForgetPasswordView(),
          );

        //SearchView

        case AppRoutes.SearchView:
          return MaterialPageRoute(builder: (context) => const SearchView());

        //ResultSearch
        case AppRoutes.ResultSearch:
          return MaterialPageRoute(builder: (context) => const ResultSearch());

        case AppRoutes.verifyCodeView:
          return MaterialPageRoute(
            builder: (context) => const VerifyCodeView(),
          );

        case AppRoutes.setNewPasswordView:
          return MaterialPageRoute(
            builder: (context) => const SetNewPasswordView(),
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
          // ignore: todo
          return MaterialPageRoute(
            builder: (context) => const PersonalInfoView(),
          );

        //FilterView
        case AppRoutes.FilterView:
          return MaterialPageRoute(builder: (context) => const FilterView());

        //DestinationView
        case AppRoutes.DestinationView:
          return MaterialPageRoute(
            builder: (context) => const DestinationView(),
          );
        //SearchTourView
        case AppRoutes.SearchTourView:
          return MaterialPageRoute(
            builder: (context) => const SearchTourView(),
          );
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
