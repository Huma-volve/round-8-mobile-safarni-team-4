import 'package:flutter/material.dart';
import 'package:round_8_mobile_safarni_team4/core/colors/app_colors.dart';
import 'package:round_8_mobile_safarni_team4/core/helpers/size_config_extension.dart';
import 'package:round_8_mobile_safarni_team4/core/theme/app_text_stytles.dart';

class TouresBookingItemTourTypeAndRateSec extends StatelessWidget {
  const TouresBookingItemTourTypeAndRateSec({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          'Full Day Tour',
          style: AppTextStyles.font14Black90w600(
            context,
          ).copyWith(color: AppColors.black[70]!),
        ),
        const Spacer(),
        Icon(
          Icons.star,
          color: Colors.amber,
          size: context.w(18),
        ),
        Text(
          '4.5',
          style: AppTextStyles.font14Black90w600(
            context,
          ).copyWith(fontSize: context.sp(12)),
        ),
      ],
    );
  }
}
