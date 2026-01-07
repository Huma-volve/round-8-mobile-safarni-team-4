import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:round_8_mobile_safarni_team4/features/hotel/data/model/hotel_model.dart';
import 'package:round_8_mobile_safarni_team4/features/hotel/presentation/widget/custom_discount_and_rationg.dart';
import 'package:round_8_mobile_safarni_team4/features/hotel/presentation/widget/custom_location.dart';

class NearbyHotelItem extends StatelessWidget {
  const NearbyHotelItem({super.key, required this.hotelModel});

  final HotelModel hotelModel;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4.0,

      color: Colors.white,
      shadowColor: Colors.grey.withOpacity(0.8),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 4.0),
        child: Row(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(8.0),
              child: Image.asset(
                'assets/images/hotel.png',
                height: 96.h,
                //width: 84.w,
                fit: BoxFit.cover,
              ),
            ),
            const SizedBox(width: 12.0),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CustomDiscountAndRationg(hotelModel: hotelModel),
                  Text(hotelModel.hotelName),
                  const CustomLocation(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
