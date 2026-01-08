import 'package:flutter/material.dart';
import 'package:round_8_mobile_safarni_team4/core/colors/app_colors.dart';
import 'package:round_8_mobile_safarni_team4/core/helpers/size_config_extension.dart';
import 'package:round_8_mobile_safarni_team4/core/helpers/theme_extension.dart';

class CarBookingSpecsRow extends StatelessWidget {
  final String transmission;
  final String seats;
  final String fuel;

  const CarBookingSpecsRow({
    super.key,
    this.transmission = 'Automatic',
    this.seats = '5 seats',
    this.fuel = 'Diesel',
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          transmission,
          style: context.textTheme.displayMedium?.copyWith(
            color: AppColors.black[80],
          ),
        ),
        SizedBox(
          height: context.h(18),
          child: VerticalDivider(
            color: AppColors.gray,
            thickness: 2,
            width: context.w(50),
          ),
        ),
        Text(
          seats,
          style: context.textTheme.displayMedium?.copyWith(
            color: AppColors.black[80],
          ),
        ),
        SizedBox(
          height: context.h(18),
          child: VerticalDivider(
            color: AppColors.gray,
            thickness: 2,
            width: context.w(70),
          ),
        ),
        Text(
          fuel,
          style: context.textTheme.displayMedium?.copyWith(
            color: AppColors.black[80],
          ),
        ),
      ],
    );
  }
}
