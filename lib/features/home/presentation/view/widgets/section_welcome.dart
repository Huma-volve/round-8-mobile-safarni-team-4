import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/colors/app_colors.dart';
import '../../../../../core/theme/app_theme.dart';

class SectionWelcome extends StatelessWidget {
  const SectionWelcome({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Welcome",
              style: AppThemes.light.textTheme.bodyLarge!.copyWith(
                  color: AppColors.mainColorLight[100]
              ),
            ),
            Text('explore The Best Places In World!',
                style: AppThemes.light.textTheme.titleMedium!.copyWith(
                    color: AppColors.black[60]
                )),
          ],),
        CircleAvatar(
            radius: 20.w,
            child: Image.asset('assets/images/Avatar.png',
              height: 40.h,
            )),

      ],);
  }
}