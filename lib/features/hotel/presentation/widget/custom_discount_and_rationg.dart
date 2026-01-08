import 'package:flutter/material.dart';
import 'package:round_8_mobile_safarni_team4/core/theme/app_theme.dart';
import 'package:round_8_mobile_safarni_team4/features/hotel/data/model/hotel_model.dart';

class CustomDiscountAndRationg extends StatelessWidget {
  const CustomDiscountAndRationg({super.key,  this.hotelModel , this.text});

  final HotelModel? hotelModel;
  final String? text;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 4.0),
          decoration: BoxDecoration(
            color: const Color(0xffEBF5FF),
            borderRadius: BorderRadius.circular(4.0),
          ),
          child: Text(
            hotelModel!.discount,
            style: AppThemes.light.textTheme.labelMedium!.copyWith(
              color: const Color(0xff007BFF),
            ),
          ),
        ),
        const Expanded(child: SizedBox()),
        IconButton(
          padding: EdgeInsets.zero,
          onPressed: () {},
          icon: const Icon(Icons.star, color: Colors.amber),
        ),
        Text(
          text ??
          hotelModel!.rating  ,
          style: AppThemes.light.textTheme.displayLarge!.copyWith(
            fontSize: 12.0,
          ),
        ),
      ],
    );
  }
}
