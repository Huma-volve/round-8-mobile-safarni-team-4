import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:round_8_mobile_safarni_team4/core/colors/app_colors.dart';
import 'package:round_8_mobile_safarni_team4/core/helpers/theme_extension.dart';
import 'package:round_8_mobile_safarni_team4/core/routing/app_routes.dart';
import 'package:round_8_mobile_safarni_team4/core/theme/app_theme.dart';

import '../../../data/model_country/country.dart';

class CountrySearchItem extends StatelessWidget {
  final CountryModel country;

  const CountrySearchItem({super.key, required this.country});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 8.h),
      child: InkWell(
        onTap: (){
          context.pushNamed(AppRoutes.ResultSearch);
        },
        child: Row(
          children: [
            Container(
              padding: EdgeInsets.all(8.w),
              decoration: BoxDecoration(
                color: Colors.blue.withOpacity(0.05),
                borderRadius: BorderRadius.circular(12),
              ),
              child: SvgPicture.asset(country.iconPath, height: 40.h),
            ),
            SizedBox(width: 16.w),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  country.name,
                  style: AppThemes.light.textTheme.titleMedium!.copyWith(
                    fontSize: 12.sp,
                    fontWeight: FontWeight.w500,
                    color: AppColors.mainColorLight[90]
                  ),
                ),
                Text(
                  country.description,
                style: AppThemes.light.textTheme.titleMedium!.copyWith(
                 fontSize: 12.sp,
                 fontWeight: FontWeight.w500,
                  color: AppColors.gray
                     ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}