import 'package:flutter/material.dart';
import 'package:round_8_mobile_safarni_team4/core/routing/app_routes.dart';
import 'package:round_8_mobile_safarni_team4/features/auth/presentation/views/login_view.dart';
import 'package:round_8_mobile_safarni_team4/features/auth/presentation/views/welcome_view.dart';
import 'package:round_8_mobile_safarni_team4/features/flight_appointment/presentation/views/select_flight_view.dart';
import 'package:round_8_mobile_safarni_team4/features/home/presentation/home_view.dart';
import 'package:round_8_mobile_safarni_team4/features/onboarding/view/onboarding_view.dart';
import '../../features/flight_appointment/presentation/views/flight_booking_page.dart';
import '../../features/payment/presentation/views/checkout_view.dart';
import '../../features/payment/presentation/views/payment_success_view.dart';

abstract class AppRouter {
  static Route<dynamic>? onGenerateRoute(RouteSettings routeSettings) {
    var args = routeSettings.arguments;
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
          return MaterialPageRoute(
            builder: (context) => const CheckoutView(),
          );

        case AppRoutes.paymentSuccess:
          return MaterialPageRoute(
            builder: (context) => const FlightBookingPage(),
          );
        case AppRoutes.selectFlight:
          return MaterialPageRoute(
            builder: (context) => const SelectFlightView(),
          );
            builder: (context) => const PaymentSuccessView(),
          );

          case AppRoutes.welcomeView:
            return MaterialPageRoute(
              builder: (context) => const WelcomeView(),
            );

        case AppRoutes.loginView:
          return MaterialPageRoute(
            builder: (context) => const LoginView(),
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
