import 'package:flutter/material.dart';
import 'package:round_8_mobile_safarni_team4/core/colors/app_colors.dart';
import 'package:round_8_mobile_safarni_team4/core/theme/app_text_stytles.dart';

class TouresBookingItemPriceRowSec extends StatelessWidget {
  const TouresBookingItemPriceRowSec({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          'From',
          style: AppTextStyles.font14Black90w600(
            context,
          ).copyWith(color: AppColors.black[70]!),
        ),
        Text(
          ' 230\$ ',
          style: AppTextStyles.font14Black90w600(
            context,
          ).copyWith(color: const Color(0xff1C64F2)),
        ),
        Text(
          'Per Person',
          style: AppTextStyles.font14Black90w600(
            context,
          ).copyWith(color: AppColors.black[70]!),
        ),
      ],
    );
  }
}
