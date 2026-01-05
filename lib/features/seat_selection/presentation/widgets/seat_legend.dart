import 'package:flutter/material.dart';
import 'package:round_8_mobile_safarni_team4/core/helpers/size_config_extension.dart';
import 'package:round_8_mobile_safarni_team4/core/helpers/theme_extension.dart';

import '../../../../core/colors/app_colors.dart';

class SeatLegend extends StatelessWidget {
  const SeatLegend({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: context.w(24),
        vertical: context.h(16),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          _buildLegendItem(context, AppColors.mainColorLight, 'Available'),
          _buildLegendItem(context, AppColors.green, 'Selected'),
          _buildLegendItem(context, AppColors.gray, 'Un available'),
        ],
      ),
    );
  }

  Widget _buildLegendItem(BuildContext context, Color color, String label) {
    return Row(
      children: [
        Container(
          width: context.w(15),
          height: context.w(15),
          decoration: BoxDecoration(color: color, shape: BoxShape.circle),
        ),
        SizedBox(width: context.w(8)),
        Text(
          label,
          style: context.textTheme.titleSmall?.copyWith(
            fontSize: context.sp(12),
          ),
        ),
      ],
    );
  }
}
