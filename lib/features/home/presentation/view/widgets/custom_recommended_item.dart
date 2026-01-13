import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:round_8_mobile_safarni_team4/core/helpers/theme_extension.dart';
import 'package:round_8_mobile_safarni_team4/core/routing/app_routes.dart';

import '../../../../../core/colors/app_colors.dart';
import '../../../../../core/theme/app_theme.dart';
import '../../../data/model/model_tours.dart';

class customRecomendeItem extends StatelessWidget {
  final Tours tour; // إضافة هذا السطر
  const customRecomendeItem({super.key, required this.tour});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => context.pushNamed(AppRoutes.DestinationView,
        arguments: tour.id,
      ),
      child: Container(
        width: 217.w,
        margin: const EdgeInsets.only(right: 8),
        padding: const EdgeInsets.all(8),
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(16),
            boxShadow: [BoxShadow(color: AppColors.black.withOpacity(.08), spreadRadius: 2, blurRadius: 15)]
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(8),
              child: Image.network( // تغيير من asset إلى network
                tour.image,
                height: 199.h,
                width: double.infinity,
                fit: BoxFit.cover,
                errorBuilder: (context, error, stackTrace) => const Icon(Icons.error),
              ),
            ),
            const SizedBox(height: 8),
            Row(
              children: [
                Expanded( // لحماية النص من الفيضان
                  child: Text(tour.title,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: AppThemes.light.textTheme.titleMedium!.copyWith(color: AppColors.mainColorLight[90]),
                  ),
                ),
                const Icon(Icons.star, color: Color(0xffFCBA42)),
                Text(tour.ratingAverage.toString(),
                  style: AppThemes.light.textTheme.titleMedium!.copyWith(fontWeight: FontWeight.w600, fontSize: 12.sp, color: AppColors.black[80]),
                )
              ],
            ),
            const Spacer(),
            Row(
              children: [
                Icon(Icons.location_on_outlined, color: AppColors.mainColorLight),
                Padding(
                  padding: const EdgeInsets.only(left: 8.0),
                  child: Text(tour.location,
                    style: AppThemes.light.textTheme.titleMedium!.copyWith(fontWeight: FontWeight.w600, fontSize: 14.sp, color: AppColors.black[60]),
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}

