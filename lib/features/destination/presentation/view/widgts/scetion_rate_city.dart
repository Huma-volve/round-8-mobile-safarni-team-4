import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/colors/app_colors.dart';
import '../../../../../core/theme/app_theme.dart';

class section_rate_city extends StatelessWidget {
  const section_rate_city({
    super.key, required this.reviewCount, required this.rating,
  });
final int reviewCount;
final double rating;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text("City Breaks",
            style: AppThemes.light.textTheme.titleMedium!.copyWith(
                fontSize: 12.sp,
                fontWeight: FontWeight.w600,
                color: AppColors.black[70]
            )
        ),
        const Spacer(),
        Wrap(
          children: List.generate(5, (index) {
            // إذا كان الـ index أقل من الرقم الصحيح (مثلاً 4.5 -> النجوم 0,1,2,3 تأخذ نجمة كاملة)
            if (index < rating.floor()) {
              return Icon(
                Icons.star,
                color: Colors.amber,
                size: 14.h,
              );
            }
            // إذا كان هناك كسر (نصف نجمة) والـ index الحالي هو مكان الكسر
            else if (index < rating) {
              return Icon(
                Icons.star_half,
                color: Colors.amber,
                size: 14.h,
              );
            }
            // باقي النجوم تكون فارغة
            else {
              return Icon(
                Icons.star_border,
                color: Colors.amber,
                size: 14.h,
              );
            }
          }),
        ),
        const SizedBox(width: 5),
        Text("$rating (${reviewCount})",   style: AppThemes.light.textTheme.titleMedium!.copyWith(
            fontSize: 12.sp,
            fontWeight: FontWeight.w600,
            color: AppColors.black[70]
        )),

      ],
    );
  }
}