import 'package:flutter/material.dart';
import 'package:round_8_mobile_safarni_team4/core/routing/app_routes.dart';
import 'package:round_8_mobile_safarni_team4/features/home/presentation/home_view.dart';
import 'package:round_8_mobile_safarni_team4/features/onboarding/view/onboarding_view.dart';
import '../../features/flight_appointment/presentation/views/flight_booking_page.dart';

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
