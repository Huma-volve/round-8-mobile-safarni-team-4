import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/colors/app_colors.dart';
import '../../../../../core/theme/app_theme.dart';

class cutomToursItem extends StatelessWidget {
  const cutomToursItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 104.h,

      margin: const EdgeInsets.only(right: 8),
      padding: const EdgeInsets.all(8),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
        boxShadow: [
          BoxShadow(
            color: AppColors.black.withOpacity(.08),
            spreadRadius: 2,
            blurRadius: 15,
          ),
        ],
      ),
      child: Row(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(8),
            child: Image.asset(
              'assets/images/fayoum.jpg',
              width: 88.w,
              height: 88.h,
              fit: BoxFit.fill,
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(left: 8),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Text(
                        'Full Day Tour',
                        style: AppThemes.light.textTheme.titleMedium!.copyWith(
                          fontSize: 12.sp,
                          fontWeight: FontWeight.w600,
                          color: AppColors.gray,
                        ),
                      ),
                      const Spacer(),
                      const Icon(Icons.star, color: Color(0xffFCBA42)),
                      Text(
                        '4.8',
                        style: AppThemes.light.textTheme.titleMedium!.copyWith(
                          fontWeight: FontWeight.w600,
                          fontSize: 12.sp,
                          color: AppColors.black[80],
                        ),
                      ),
                    ],
                  ),
                  Text(
                    'Full Day Tour',
                    style: AppThemes.light.textTheme.titleLarge!.copyWith(
                      fontSize: 16.sp,
                      fontWeight: FontWeight.w500,
                      color: AppColors.black,
                    ),
                  ),

                  Padding(
                    padding: const EdgeInsets.only(top: 5),
                    child: Row(
                      children: [
                        Text(
                          'From',
                          style: AppThemes.light.textTheme.titleLarge!.copyWith(
                            fontSize: 14.sp,
                            fontWeight: FontWeight.w700,
                            color: AppColors.gray,
                          ),
                        ),
                        Text(
                          ' 200',
                          style: AppThemes.light.textTheme.titleLarge!.copyWith(
                            fontSize: 14.sp,
                            fontWeight: FontWeight.w700,
                            color: AppColors.mainColorLight,
                          ),
                        ),
                        Text(
                          ' Per Person',
                          style: AppThemes.light.textTheme.titleLarge!.copyWith(
                            fontSize: 14.sp,
                            fontWeight: FontWeight.w700,
                            color: AppColors.gray,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
