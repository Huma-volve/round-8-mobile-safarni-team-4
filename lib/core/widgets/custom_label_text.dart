import 'package:flutter/material.dart';
import 'package:round_8_mobile_safarni_team4/core/colors/app_colors.dart';
import 'package:round_8_mobile_safarni_team4/core/theme/app_text_stytles.dart';

class CustomLabelText extends StatelessWidget {
  const CustomLabelText({super.key, required this.labelText});
  final String labelText;

  @override
  Widget build(BuildContext context) {
    return Text(
      labelText,
      style: AppTextStyles.font14grayColor70Regular(
        context,
      ).copyWith(fontWeight: FontWeight.w600, color: AppColors.grayColor[70]),
    );
  }
}
