import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/colors/app_colors.dart';
import '../../../../../core/theme/app_theme.dart';

class customRecomendeItem extends StatelessWidget {
  const customRecomendeItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 217.w,

      margin: EdgeInsets.only(right: 8),
      padding: EdgeInsets.all(8),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(16),
          boxShadow: [
            BoxShadow(
              color: AppColors.black.withOpacity(.08),
              spreadRadius: 2,
              blurRadius: 15,


            )
          ]

      ),
      child:Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(8),
            child: Image.asset('assets/images/p.png',
              height: 199.h,
              fit: BoxFit.cover,

            ),
          ),
          SizedBox(height: 8,),
          Row(
            children: [
              Text('The Pyramids',
                style: AppThemes.light.textTheme.titleMedium!.copyWith(
                    color: AppColors.mainColorLight[90]
                ),
              ),
              Spacer(),
              Icon(Icons.star,
                color: Color(0xffFCBA42),),
              Text('4.8',
                style: AppThemes.light.textTheme.titleMedium!.copyWith(
                    fontWeight: FontWeight.w600,
                    fontSize: 12.sp,
                    color: AppColors.black[80]
                ),
              )

            ],
          ),
          Spacer(),
          Row(
            children: [
              Icon(Icons.location_on_outlined,
                color: AppColors.mainColorLight,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 8.0),
                child: Text('Giza',
                  style: AppThemes.light.textTheme.titleMedium!.copyWith(
                      fontWeight: FontWeight.w600,
                      fontSize: 14.sp,
                      color: AppColors.black[60]
                  ),
                ),
              )
            ],
          ),

        ],
      ),
    );
  }
}

