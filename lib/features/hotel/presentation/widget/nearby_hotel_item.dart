import 'package:flutter/material.dart';
import 'package:round_8_mobile_safarni_team4/features/hotel/data/model/hotel_model.dart';
import 'package:round_8_mobile_safarni_team4/features/hotel/presentation/widget/custom_discount_and_rationg.dart';
import 'package:round_8_mobile_safarni_team4/features/hotel/presentation/widget/custom_location.dart';

class NearbyHotelItem extends StatelessWidget {
  const NearbyHotelItem({super.key, required this.hotelModel});

  final HotelModel hotelModel;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(8.0),
          child: Image.asset(
            'assets/images/hotel.png',
            // height: 84,
            width: 84,
            fit: BoxFit.cover,
          ),
        ),
        SizedBox(width: 12.0),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomDiscountAndRationg(hotelModel: hotelModel),
              Text(hotelModel.hotelName),
              CustomLocation(),
            ],
          ),
        ),
      ],
    );
  }
}
