import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/colors/app_colors.dart';
import '../../../../../core/theme/app_theme.dart';

class SectionNumOfResult extends StatelessWidget {
  const SectionNumOfResult({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(children: [
      Text('Paris',
        style: AppThemes.light.textTheme.titleLarge!.copyWith(
            color: AppColors.mainColorLight[100],
            fontSize: 20.sp
        ),
      ),
      Text(' 56 Result',
        style: AppThemes.light.textTheme.titleMedium!.copyWith(
            color: AppColors.black[60],
            fontSize: 15.sp
        ),
      )
    ],);
  }
}
