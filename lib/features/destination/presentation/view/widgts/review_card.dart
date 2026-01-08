import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/theme/app_theme.dart';

class ReviewCard extends StatelessWidget {
  final String name;
  final String date;
  final String comment;
  final String avatar;

  const ReviewCard({
    required this.name,
    required this.date,
    required this.comment,
    required this.avatar,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 15),
      padding: EdgeInsets.all(8),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        border: Border.all(color: Colors.grey.shade200),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              CircleAvatar(
                  radius: 20,
                  backgroundImage: NetworkImage(avatar)),
              SizedBox(width: 10),

              Text(name, style: AppThemes.light.textTheme.titleMedium!.copyWith(
                               fontSize: 18.sp,
              fontWeight: FontWeight.w600,)),
              Spacer(),
              Text(date,  style: AppThemes.light.textTheme.titleMedium!.copyWith(
                fontSize: 13.sp,
                color: Colors.grey,
                fontWeight: FontWeight.w500,)),
            ],
          ),
          SizedBox(height: 10),
          Row(
            children: List.generate(5, (index) => Icon(Icons.star, color: Colors.amber, size: 16)),
          ),
          SizedBox(height: 8),
          Text(comment, style: AppThemes.light.textTheme.titleMedium!.copyWith(
    fontSize: 16.sp,
    fontWeight: FontWeight.w400,
    )),
        ],
      ),
    );
  }
}