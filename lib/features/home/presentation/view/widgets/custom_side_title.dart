import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/colors/app_colors.dart';
import '../../../../../core/theme/app_theme.dart';

class customSideTitile extends StatelessWidget {
  const customSideTitile({
    super.key, required this.title,
    this.viewAll, this.onTap
  }
  );
  final String title;
 final bool ?viewAll;
 final void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 32,bottom: 16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(title,
            textAlign: TextAlign.start,
            style: AppThemes.light.textTheme.titleLarge!.copyWith(
                fontSize: 17.sp,
                color: AppColors.mainColorLight[100]

            ),

          ),
          
         viewAll! ? InkWell(
            onTap: onTap,
            child: Text("View all",
            style: AppThemes.light.textTheme.titleMedium!.copyWith(
              color: AppColors.mainColorLight[80]
            ),
            ),
          ):const Text('')
        ],
      ),
    );
  }
}



