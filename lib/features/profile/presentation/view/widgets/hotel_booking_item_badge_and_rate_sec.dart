import 'package:flutter/material.dart';
import 'package:round_8_mobile_safarni_team4/core/colors/app_colors.dart';
import 'package:round_8_mobile_safarni_team4/core/helpers/size_config_extension.dart';
import 'package:round_8_mobile_safarni_team4/core/theme/app_text_stytles.dart';

class HotelBookingItemBadgeAndRateSec extends StatelessWidget {
  const HotelBookingItemBadgeAndRateSec({
    super.key,
    required this.discount,
    required this.rating,
  });

  final String discount;
  final double rating;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          padding: EdgeInsets.symmetric(
            horizontal: context.h(12),
            vertical: context.w(8),
          ),
          decoration: BoxDecoration(
            color: const Color(0xffEBF5FF),
            borderRadius: BorderRadius.circular(20),
          ),
          child: Text(
            discount,
            style: AppTextStyles.font14Black90w600(context).copyWith(
              fontSize: context.sp(12),
              color: AppColors.mainColorLight,
            ),
          ),
        ),
        const Spacer(),
        Icon(Icons.star, color: Colors.amber, size: context.w(18)),
        Text(
          rating.toStringAsFixed(1),
          style: AppTextStyles.font14Black90w600(
            context,
          ).copyWith(fontSize: context.sp(12)),
        ),
      ],
    );
  }
}
