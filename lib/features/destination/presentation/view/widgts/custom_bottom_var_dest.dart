import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:round_8_mobile_safarni_team4/core/colors/app_colors.dart';
import 'package:round_8_mobile_safarni_team4/core/helpers/theme_extension.dart';
import 'package:round_8_mobile_safarni_team4/core/routing/app_routes.dart';

import '../../../../../core/theme/app_theme.dart';

class CusotmBottomBarDest extends StatelessWidget {
  const CusotmBottomBarDest({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border(top: BorderSide(color: Colors.grey.shade200)),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Total price",
                style: AppThemes.light.textTheme.titleMedium!.copyWith(
                  color: AppColors.mainColorLight[100],
                  fontWeight: FontWeight.w400,
                  fontSize: 16.sp,
                ),
              ),
              Row(
                children: [
                  Text(
                    "\$150.00",
                    style: AppThemes.light.textTheme.titleMedium!.copyWith(
                      color: AppColors.mainColorLight[70],
                      fontWeight: FontWeight.w400,
                      fontSize: 17.sp,
                    ),
                  ),
                  Text(
                    " /person",
                    style: AppThemes.light.textTheme.titleMedium!.copyWith(
                      color: AppColors.black[70],
                      fontWeight: FontWeight.w600,
                      fontSize: 13.sp,
                    ),
                  ),
                ],
              ),
            ],
          ),
          ElevatedButton(
            onPressed: () {
              context.pushNamed(AppRoutes.paymentMethod);
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: const Color(0xFF1E429F),
              padding: const EdgeInsets.symmetric(horizontal: 45, vertical: 16),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
              ),
            ),
            child: Text(
              "Book Now",
              style: AppThemes.light.textTheme.titleMedium!.copyWith(
                color: Colors.white,
                fontWeight: FontWeight.w600,
                fontSize: 16.sp,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
