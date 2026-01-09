import 'package:flutter/material.dart';
import 'package:round_8_mobile_safarni_team4/core/colors/app_colors.dart';
import 'package:round_8_mobile_safarni_team4/core/helpers/size_config_extension.dart';
import 'package:round_8_mobile_safarni_team4/core/theme/app_text_stytles.dart';

class SignUpWelcomeTitleSection extends StatelessWidget {
  const SignUpWelcomeTitleSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          'Welcome Again',
          style: AppTextStyles.font18grayColor100SemiBold(context),
        ),
        context.gapH(8),
        Text(
          'Welcome back! please Fill Your data',
          style: AppTextStyles.font14grayColor70Regular(
            context,
          ).copyWith(color: AppColors.grayColor[60]),
        ),
      ],
    );
  }
}
