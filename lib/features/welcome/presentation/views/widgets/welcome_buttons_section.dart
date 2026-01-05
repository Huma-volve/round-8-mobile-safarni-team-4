import 'package:flutter/material.dart';
import 'package:round_8_mobile_safarni_team4/core/colors/app_colors.dart';
import 'package:round_8_mobile_safarni_team4/core/helpers/size_config_extension.dart';
import 'package:round_8_mobile_safarni_team4/core/helpers/theme_extension.dart';
import 'package:round_8_mobile_safarni_team4/core/routing/app_routes.dart';
import 'package:round_8_mobile_safarni_team4/core/widgets/custom_button.dart';

class WelcomeButtonsSection extends StatelessWidget {
  const WelcomeButtonsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 3,
      child: Column(
        children: [
          CustomButton(
            buttonName: 'Sign Up',
            onPressed: () {
              context.pushNamed(AppRoutes.signupView);
            },
          ),
          context.gapH(16),
          CustomButton(
            buttonName: 'Log In',
            onPressed: () {
              context.pushNamed(AppRoutes.loginView);
            },
            buttonColors: Colors.white,
            border: Border.all(color: AppColors.mainColorLight, width: 1.5),
            style: context.textTheme.titleLarge?.copyWith(
              color: AppColors.mainColorLight,
              fontSize: context.sp(16),
              fontWeight: FontWeight.w600,
            ),
          ),
        ],
      ),
    );
  }
}
