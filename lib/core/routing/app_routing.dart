import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:round_8_mobile_safarni_team4/core/di/service_locator.dart';
import 'package:round_8_mobile_safarni_team4/core/routing/app_routes.dart';
import 'package:round_8_mobile_safarni_team4/features/filter/presentation/views/filter_view.dart';
import 'package:round_8_mobile_safarni_team4/features/flight_appointment/presentation/views/select_flight_view.dart';
import 'package:round_8_mobile_safarni_team4/features/hotel/data/model/hotel_available_rooms/rooms_model.dart';
import 'package:round_8_mobile_safarni_team4/features/hotel/data/model/room_detailes/rooms_data.dart';
import 'package:round_8_mobile_safarni_team4/features/hotel/presentation/maneger/hotel_available_rooms/hotel_availables_room_cubit.dart';
import 'package:round_8_mobile_safarni_team4/features/hotel/presentation/maneger/room_detailes/room_detailes_cubit.dart';
import 'package:round_8_mobile_safarni_team4/features/hotel/presentation/view/available_room.dart';
import 'package:round_8_mobile_safarni_team4/features/hotel/presentation/view/hotel_view.dart';
import 'package:round_8_mobile_safarni_team4/features/hotel/presentation/view/room_detailes.dart';
import 'package:round_8_mobile_safarni_team4/features/login/presentation/views/forget_password_view.dart';
import 'package:round_8_mobile_safarni_team4/features/login/presentation/views/login_view.dart';
import 'package:round_8_mobile_safarni_team4/features/login/presentation/views/set_new_password_view.dart';
import 'package:round_8_mobile_safarni_team4/features/login/presentation/views/success_reset_password_view.dart';
import 'package:round_8_mobile_safarni_team4/features/login/presentation/views/verify_code_view.dart';
import 'package:round_8_mobile_safarni_team4/features/profile/presentation/view/my_booking_view.dart';
import 'package:round_8_mobile_safarni_team4/features/profile/presentation/view/personal_info_view.dart';
import 'package:round_8_mobile_safarni_team4/features/profile/presentation/view/profile_view.dart';
import 'package:round_8_mobile_safarni_team4/features/search/presentation/view/result_search.dart';
import 'package:round_8_mobile_safarni_team4/features/seat_selection/presentation/views/seat_selection_view.dart';
import 'package:round_8_mobile_safarni_team4/features/sign_up/presentation/views/sign_up_view.dart';
import 'package:round_8_mobile_safarni_team4/features/welcome/presentation/views/welcome_view.dart';

import '../../features/boarding_pass/presentation/views/boarding_pass_view.dart';
import '../../features/bottom_nav_bar/presentation/views/bottom_nav_bar.dart';
import '../../features/car_booking/presentation/views/car_booking.dart';
import '../../features/car_booking/presentation/views/car_details.dart';
import '../../features/car_booking/presentation/views/pick_up_details.dart';
import '../../features/car_booking/presentation/widgets/popular_cars_list.dart';
import '../../features/compare/presentation/view/compare_view.dart';
import '../../features/destination/presentation/view/destination_view.dart';
import '../../features/favorite/presentation/view/favorite_view.dart';
import '../../features/flight_appointment/presentation/views/flight_booking_page.dart';
import '../../features/home/presentation/view/search_tour_view.dart';
import '../../features/onboarding/view/onboarding_view.dart';
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
            builder: (context) =>
                CarDetailsView(model: args as PopularCarModel),
          );

        case AppRoutes.pickUpDetails:
          return MaterialPageRoute(
            builder: (context) =>
                PickUpDetailsView(model: args as PopularCarModel),
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
        //  return MaterialPageRoute(builder: (context) => const FilterView());
        case AppRoutes.myBookingView:
          return MaterialPageRoute(builder: (context) => const MyBookingView());

        //CompareView
        case AppRoutes.compareView:
          return MaterialPageRoute(builder: (context) => const CompareView());

        //FavoriteView
        case AppRoutes.favoriteView:
          return MaterialPageRoute(builder: (context) => const FavoriteView());

        case AppRoutes.roomDetailesView:
          final rooms = routeSettings.arguments as RoomItemModel;
         // final hotelId =RoomsData. ;
          return MaterialPageRoute(
            builder: (context) => BlocProvider(
              create: (context) => getIt<RoomDetailesCubit>()..fetchRoomDetailes(rooms.id),
              child: RoomDetailesView(room: rooms as dynamic),
            ),
          );

        case AppRoutes.hotelView:
          return MaterialPageRoute(builder: (context) => const HotelView());

        case AppRoutes.availableRoom:
          final hotelId = routeSettings.arguments as int;
          return MaterialPageRoute(
            builder: (context) => BlocProvider(
              create: (context) =>
                  getIt<HotelAvailableRoomsCubit>()..fetchHotelRooms(hotelId),
              child: const AvailableRoom(),
            ),
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
