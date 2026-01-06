import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../../../core/colors/app_colors.dart';
import '../../../../../../core/theme/app_theme.dart';

class ItemTitleRating extends StatelessWidget {
  const ItemTitleRating({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          'Double Dreams in Paris',
          style: AppThemes.light.textTheme.titleMedium!.copyWith(
              color: AppColors.mainColorLight[150],
              fontSize: 17.sp,
              fontWeight: FontWeight.w600),
        ),
        const Spacer(),
        const Icon(Icons.star, color: Color(0xffFCBA42)),
        Text(
          '4.8',
          style: AppThemes.light.textTheme.titleMedium!.copyWith(
              fontWeight: FontWeight.w600,
              fontSize: 12.sp,
              color: AppColors.black[80]),
        ),
        Text(
          ' (650)',
          style: AppThemes.light.textTheme.titleMedium!.copyWith(
              fontWeight: FontWeight.w600,
              fontSize: 10.sp,
              color: AppColors.black[70]),
        )
      ],
    );
  }
}