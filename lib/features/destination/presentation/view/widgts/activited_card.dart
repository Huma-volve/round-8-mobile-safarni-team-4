// 1. كارت الأنشطة (Top Activities)
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/colors/app_colors.dart';
import '../../../../../core/theme/app_theme.dart';

class ActivityCard extends StatelessWidget {
  final String imageUrl;
  final String title;

  const ActivityCard({required this.imageUrl, required this.title});

  @override
  Widget build(BuildContext context) {
    return Container(
      width:MediaQuery.of(context).size.width*.45, // المقاس المطلوب
      height: 166.h,
      padding: EdgeInsets.symmetric(horizontal: 8, vertical: 8),
      // المقاس المطلوب
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
       boxShadow: [

         BoxShadow(
           color: Colors.black12,
           blurRadius: 10,
           spreadRadius: 1,
         ),
       ]
      ),
      child: Column(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(8),
            child: Image.network(
              imageUrl,
              width: MediaQuery.of(context).size.width,
              height: 119.h, // المقاس المطلوب للصورة
              fit: BoxFit.cover,
            ),
          ),
          Expanded(
            child: Center(
              child: Text(
                title,
               style: AppThemes.light.textTheme.titleMedium!.copyWith(
    fontSize: 15.sp,
    fontWeight: FontWeight.w500,
    color: AppColors.mainColorLight[100])
              ),
            ),
          ),
        ],
      ),
    );
  }
}

// 2. كارت التقييم (Review Card)
