import 'package:flutter/material.dart';

import '../../../../../core/colors/app_colors.dart';
import '../../../../../core/theme/app_theme.dart';
import '../../../data/model/model_category.dart';

class CategoryItem extends StatelessWidget {
  final CategoryModel category;

  const CategoryItem({super.key, required this.category});

  @override
  Widget build(BuildContext context) {
    return InkWell(
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
              color: AppColors.mainColorLight[70],
            ),
          ),
        ],
      ),
    );
  }

  void _navigateToPage(BuildContext context, String title) {
    switch (title) {
      case 'Flight':
        break;
      case 'Cars':
        break;
      case 'Tours':
        break;
      case 'Hotel':
        break;
      default:
        break;
    }
  }
}
