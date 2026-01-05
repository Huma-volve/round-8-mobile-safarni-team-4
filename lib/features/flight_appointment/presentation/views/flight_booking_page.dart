import 'package:flutter/material.dart';
import '../../../../core/colors/app_colors.dart';
import '../widgets/flight_booking_header.dart';
import '../widgets/flight_booking_form.dart';
import '../widgets/trip_type_selector.dart';

class FlightBookingPage extends StatelessWidget {
  const FlightBookingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      body: Column(
        spacing: 14,
        children: [
          Expanded(
            flex: 5,
            child: const FlightBookingHeader(title: 'Book Your Flight'),
          ),
          Expanded(child: const TripTypeSelector()),
          Expanded(flex: 12, child: const FlightBookingForm()),
        ],
      ),
    );
  }
}
