// 1. كارت الأنشطة (Top Activities)
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/colors/app_colors.dart';
import '../../../../../core/theme/app_theme.dart';

class ActivityCard extends StatelessWidget {
  final String imageUrl;
  final String title;

  const ActivityCard({super.key, required this.imageUrl, required this.title});

  @override
  Widget build(BuildContext context) {
    return Container(
      width:MediaQuery.of(context).size.width*.45, // المقاس المطلوب
      margin: EdgeInsets.all(10),
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 8),
      // المقاس المطلوب
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
       boxShadow: const [

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
            child:CachedNetworkImage(
              imageUrl: imageUrl,
              height: 80.h,
              width: 100.w,
              fit: BoxFit.cover,
              // الحالة عند التحميل
              placeholder: (context, url) => Container(
                color: Colors.grey[200],
                child: const Center(child: CircularProgressIndicator(strokeWidth: 2)),
              ),
              // الحالة عند عدم وجود رابط أو فشل التحميل (وهذا ما سيحدث هنا)
              errorWidget: (context, url, error) => Container(
                color: AppColors.mainColorLight.withOpacity(0.1),
                child: Icon(
                  Icons.error_outline, // أيقونة افتراضية للنشاط
                  color:Colors.red,
                  size: 30.sp,
                ),
              ),
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
