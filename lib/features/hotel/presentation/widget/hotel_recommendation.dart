import 'package:flutter/material.dart';
import 'package:round_8_mobile_safarni_team4/core/theme/app_theme.dart';
import 'package:round_8_mobile_safarni_team4/features/hotel/data/model/hotel_model.dart';
import 'package:round_8_mobile_safarni_team4/features/hotel/presentation/widget/custom_discount_and_rationg.dart';
import 'package:round_8_mobile_safarni_team4/features/hotel/presentation/widget/custom_location.dart';

class HotelRecommendation extends StatelessWidget {
  const HotelRecommendation({super.key, required this.hotelModel});

  final HotelModel hotelModel;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200,
      margin: const EdgeInsets.only(left: 16, top: 8, bottom: 8),
      padding: const EdgeInsets.all(12.0),
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(1),
            spreadRadius: 3,
            blurRadius: 5,
            offset: const Offset(0, 3),
          ),
        ],
        borderRadius: BorderRadius.circular(16.0),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset(hotelModel.hotelImage, fit: BoxFit.contain),
          const SizedBox(height: 4.0),
          CustomDiscountAndRationg(hotelModel: hotelModel),
          Text(
            hotelModel.hotelName,
            style: AppThemes.light.textTheme.titleLarge!.copyWith(
              fontSize: 16.0,
            ),
          ),
          CustomLocation(),
        ],
      ),
    );
  }
}
