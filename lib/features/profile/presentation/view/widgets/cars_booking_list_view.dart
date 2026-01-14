import 'package:flutter/material.dart';
import 'package:round_8_mobile_safarni_team4/features/profile/domain/entities/booking_entity.dart';
import 'car_booking_item.dart';

class CarsBookingListView extends StatelessWidget {
  const CarsBookingListView({super.key, required this.bookings});

  final List<BookingEntity> bookings;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: bookings.length,
      itemBuilder: (context, index) => const CarBookingItem(),
    );
  }
}
