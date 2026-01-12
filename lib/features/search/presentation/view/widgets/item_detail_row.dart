import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../../../core/colors/app_colors.dart';
import '../../../../../../core/theme/app_theme.dart';

class ItemDetailsRow extends StatelessWidget {
  const ItemDetailsRow({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          'Pickup Available',
          style: AppThemes.light.textTheme.titleMedium!.copyWith(
            fontWeight: FontWeight.w600,
            fontSize: 14.sp,
            color: AppColors.black[60],
          ),
        ),
        const Padding(
          padding: EdgeInsets.only(left: 15, right: 4),
          child: CircleAvatar(radius: 6, backgroundColor: Color(0xff1E429F)),
        ),
        Text(
          '5 Days',
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
