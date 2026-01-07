import 'package:flutter/material.dart';
import 'car_booking_item.dart';

class CarsBookingListView extends StatelessWidget {
  const CarsBookingListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        itemCount: 4,
        itemBuilder: (context, index) => const CarBookingItem(),
      ),
    );
  }
}
