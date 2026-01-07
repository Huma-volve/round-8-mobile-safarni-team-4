import 'package:flutter/material.dart';
import 'package:round_8_mobile_safarni_team4/core/helpers/size_config_extension.dart';
import 'hotel_booking_item.dart';

class HotelsBookingListView extends StatelessWidget {
  const HotelsBookingListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        scrollDirection: Axis.vertical,
        physics: const NeverScrollableScrollPhysics(),
        itemCount: 5,
        padding: EdgeInsets.symmetric(horizontal: context.w(16)),
        itemBuilder: (context, index) {
          return const HotelBookingItem();
        },
      ),
    );
  }
}
