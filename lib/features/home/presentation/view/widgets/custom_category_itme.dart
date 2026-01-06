import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../../../core/colors/app_colors.dart';
import '../../../../../core/theme/app_theme.dart';
import '../../../data/model/model_category.dart';

class CategoryItem extends StatelessWidget {
  final CategoryModel category;

  const CategoryItem({required this.category});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      // 1. جعل العنصر قابلاً للضغط
      onTap: () {
        _navigateToPage(context, category.title);
      },
      child: Column(
        children: [
          Container(
            width: 70,
            height: 70,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              image: DecorationImage(
                image: AssetImage(category.imagePath),
                fit: BoxFit.cover,
              ),
            ),
          ),
          const SizedBox(height: 8),
          Text(
              category.title,
              style: AppThemes.light.textTheme.titleMedium!.copyWith(
                  color: AppColors.mainColorLight[70]
              )
          ),
        ],
      ),
    );
  }

  // 2. وظيفة التوجيه بناءً على الاسم
  void _navigateToPage(BuildContext context, String title) {
    switch (title) {
      case 'Flight':
      // Navigator.push(context, MaterialPageRoute(builder: (context) => FlightsScreen()));
        print("ذهاب لصفحة الطيران");
        break;
      case 'Cars':
      // Navigator.push(context, MaterialPageRoute(builder: (context) => CarsScreen()));
        print("ذهاب لصفحة السيارات");
        break;
      case 'Tours':
        print("ذهاب لصفحة الجولات");
        break;
      case 'Hotel':
        print("ذهاب لصفحة الفنادق");
        break;
      default:
        print("صفحة غير معروفة");
    }
  }
}