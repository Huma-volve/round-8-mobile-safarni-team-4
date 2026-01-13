import 'package:flutter/material.dart';
import 'package:round_8_mobile_safarni_team4/core/colors/app_colors.dart';
import 'package:round_8_mobile_safarni_team4/core/helpers/size_config_extension.dart';
import 'package:round_8_mobile_safarni_team4/core/helpers/theme_extension.dart';

import 'brands_list.dart';

class BrandCard extends StatelessWidget {
  final BrandModel model;
  final bool isSelected;

  const BrandCard({super.key, required this.model, this.isSelected = false});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
      decoration: BoxDecoration(
        color:
            isSelected
                ? AppColors.mainColorLight.withOpacity(0.1)
                : Colors.white,
        borderRadius: BorderRadius.circular(12),
        border: Border.all(
          color: isSelected ? AppColors.mainColorLight : Colors.grey.shade100,
        ),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.02),
            blurRadius: 10,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      child: Column(
        children: [
          Expanded(flex: 2, child: Image.asset(model.logo)),
          Expanded(
            flex: 1,
            child: Column(
              children: [
                Text(
                  model.name,
                  style: context.textTheme.labelMedium?.copyWith(
                    fontWeight: FontWeight.w500,
                    color: AppColors.black,
                    fontSize: context.sp(8),
                  ),
                ),
                Text(
                  model.count,
                  style: context.textTheme.labelSmall?.copyWith(
                    color: AppColors.mainColorLight,
                    fontWeight: FontWeight.w600,
                    fontSize: context.sp(10),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
