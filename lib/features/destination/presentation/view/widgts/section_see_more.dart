import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/colors/app_colors.dart';
import '../../../../../core/theme/app_theme.dart';

class SctionSeeMore extends StatelessWidget {
  const SctionSeeMore({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text("Gallery (150)",
            style: AppThemes.light.textTheme.titleMedium!.copyWith(
                fontSize: 17.sp,
                fontWeight: FontWeight.w600,
                color: AppColors.mainColorLight[100])),
        const Spacer(),
        InkWell(
          onTap: (){},
          child: Text("See more",
              style: AppThemes.light.textTheme.titleMedium!.copyWith(
                  fontSize: 15.sp,
                  fontWeight: FontWeight.w600,
                  color: AppColors.mainColorLight[70])),
        ),
      ],
    );
  }
}
