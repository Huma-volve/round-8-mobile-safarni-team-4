import 'package:flutter/material.dart';
import 'package:round_8_mobile_safarni_team4/core/colors/app_colors.dart';
import 'package:round_8_mobile_safarni_team4/core/helpers/size_config_extension.dart';
import 'package:round_8_mobile_safarni_team4/core/theme/app_text_stytles.dart';
import 'car_booking_specs_row.dart';

class CarBookingItem extends StatelessWidget {
  final String title;
  final String transmission;
  final String seats;
  final String fuel;
  final String imagePath;

  const CarBookingItem({
    super.key,
    this.title = 'S 500 Sedan',
    this.transmission = 'Automatic',
    this.seats = '5 seats',
    this.fuel = 'Diesel',
    this.imagePath = 'assets/images/car_image.png',
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          padding: EdgeInsets.symmetric(
            vertical: context.h(30),
            horizontal: context.w(16),
          ),
          margin: EdgeInsetsGeometry.symmetric(
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
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: AppTextStyles.font18Blackw600(
                  context,
                ).copyWith(fontWeight: FontWeight.w500),
              ),
              context.gapH(20),
              CarBookingSpecsRow(
                transmission: transmission,
                seats: seats,
                fuel: fuel,
              ),
            ],
          ),
        ),
        Positioned(
          right: context.w(0),
          top: context.h(0),
          child: Image.asset(imagePath),
        ),
      ],
    );
  }
}
