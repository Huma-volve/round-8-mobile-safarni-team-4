import 'package:flutter/material.dart';
import 'package:round_8_mobile_safarni_team4/core/colors/app_colors.dart';
import 'package:round_8_mobile_safarni_team4/core/helpers/size_config_extension.dart';
import 'package:round_8_mobile_safarni_team4/core/widgets/flight_booking_details.dart';
import 'package:round_8_mobile_safarni_team4/features/profile/domain/entities/booking_entity.dart';

class FlightBookingListView extends StatelessWidget {
  const FlightBookingListView({super.key, required this.bookings});

  final List<BookingEntity> bookings;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder:
          (context, index) => Container(
            padding: EdgeInsets.symmetric(
              horizontal: context.w(35),
              vertical: context.h(16),
            ),
            margin: EdgeInsets.symmetric(
              vertical: context.h(12),
              horizontal: context.w(16),
            ),
            decoration: BoxDecoration(
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  color: AppColors.black[10]!,
                  blurRadius: 5,
                  offset: const Offset(0, 1),
                ),
              ],
              borderRadius: BorderRadius.circular(16),
            ),
            child: const FlightBookingDetails(),
          ),
      itemCount: bookings.length,
    );
  }
}
