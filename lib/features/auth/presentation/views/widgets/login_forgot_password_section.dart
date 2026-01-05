import 'package:flutter/material.dart';
import 'package:round_8_mobile_safarni_team4/core/colors/app_colors.dart';
import 'package:round_8_mobile_safarni_team4/core/helpers/size_config_extension.dart';
import 'package:round_8_mobile_safarni_team4/core/helpers/theme_extension.dart';

class LoginForgotPasswordSection extends StatelessWidget {
  const LoginForgotPasswordSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerRight,
      child: Text(
        'Forgot Password ?',
        style: context.textTheme.displayMedium?.copyWith(
          fontSize: context.sp(13),
          color: AppColors.black[80],
          fontWeight: FontWeight.w600,
        ),
      ),
    );
  }
}
