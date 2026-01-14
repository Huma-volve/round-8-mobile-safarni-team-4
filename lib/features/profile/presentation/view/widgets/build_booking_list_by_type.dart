import 'package:flutter/material.dart';
import 'package:round_8_mobile_safarni_team4/features/profile/domain/entities/booking_entity.dart';
import 'package:round_8_mobile_safarni_team4/features/profile/presentation/view/widgets/cars_booking_list_view.dart';
import 'package:round_8_mobile_safarni_team4/features/profile/presentation/view/widgets/flight_booking_list_view.dart';
import 'package:round_8_mobile_safarni_team4/features/profile/presentation/view/widgets/hotels_booking_list_view.dart';
import 'package:round_8_mobile_safarni_team4/features/profile/presentation/view/widgets/toures_booking_list_view.dart';

Widget buildBookingListByType(int selectedIndex, List<BookingEntity> bookings) {
  switch (selectedIndex) {
    case 0:
      return FlightBookingListView(bookings: bookings);
    case 1:
      return CarsBookingListView(bookings: bookings);
    case 2:
      return TouresBookingListView(bookings: bookings);
    case 3:
      return HotelsBookingListView(bookings: bookings);
    default:
      return const SizedBox.shrink();
  }
}
