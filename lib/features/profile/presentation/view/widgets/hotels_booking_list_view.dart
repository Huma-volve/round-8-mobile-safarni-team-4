import 'package:flutter/material.dart';
import 'package:round_8_mobile_safarni_team4/core/helpers/size_config_extension.dart';
import 'package:round_8_mobile_safarni_team4/features/profile/domain/entities/booking_entity.dart';
import 'hotel_booking_item.dart';

class HotelsBookingListView extends StatelessWidget {
  const HotelsBookingListView({super.key, required this.bookings});

  final List<BookingEntity> bookings;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      scrollDirection: Axis.vertical,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: bookings.length,
      padding: EdgeInsets.symmetric(horizontal: context.w(16)),
      itemBuilder: (context, index) {
        return const HotelBookingItem();
      },
    );
  }
}
