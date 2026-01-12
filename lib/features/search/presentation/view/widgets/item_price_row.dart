import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../../../core/colors/app_colors.dart';
import '../../../../../../core/theme/app_theme.dart';

class ItemPriceRow extends StatelessWidget {
  const ItemPriceRow({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          'From',
          style: AppThemes.light.textTheme.titleMedium!.copyWith(
            fontWeight: FontWeight.w600,
            fontSize: 14.sp,
            color: AppColors.black[60],
          ),
        ),
        Text(
          ' 1050\$',
          style: AppThemes.light.textTheme.titleMedium!.copyWith(
            fontWeight: FontWeight.w600,
            fontSize: 16.sp,
            color: const Color(0xff1C64F2),
          ),
        ),
        Text(
          ' per Person',
          style: AppThemes.light.textTheme.titleMedium!.copyWith(
            fontWeight: FontWeight.w600,
            fontSize: 14.sp,
            color: AppColors.black[60],
          ),
        ),
      ],
    );
  }
}
