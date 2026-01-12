import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/theme/app_theme.dart';

class ReviewCard extends StatelessWidget {
  final String name;
  final String date;
  final String comment;
  final String avatar;

  const ReviewCard({
    super.key,
    required this.name,
    required this.date,
    required this.comment,
    required this.avatar,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 15),
      padding: const EdgeInsets.all(8),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        border: Border.all(color: Colors.grey.shade200),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              CircleAvatar(radius: 20, backgroundImage: NetworkImage(avatar)),
              const SizedBox(width: 10),

              Text(
                name,
                style: AppThemes.light.textTheme.titleMedium!.copyWith(
                  fontSize: 18.sp,
                  fontWeight: FontWeight.w600,
                ),
              ),
              const Spacer(),
              Text(
                date,
                style: AppThemes.light.textTheme.titleMedium!.copyWith(
                  fontSize: 13.sp,
                  color: Colors.grey,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ],
          ),
          const SizedBox(height: 10),
          Row(
            children: List.generate(
              5,
              (index) => const Icon(Icons.star, color: Colors.amber, size: 16),
            ),
          ),
          const SizedBox(height: 8),
          Text(
            comment,
            style: AppThemes.light.textTheme.titleMedium!.copyWith(
              fontSize: 16.sp,
              fontWeight: FontWeight.w400,
            ),
          ),
        ],
      ),
    );
  }
}
