import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:round_8_mobile_safarni_team4/core/colors/app_colors.dart';
import 'package:round_8_mobile_safarni_team4/core/helpers/theme_extension.dart';
import 'package:round_8_mobile_safarni_team4/core/routing/app_routes.dart';
import 'package:round_8_mobile_safarni_team4/core/theme/app_text_stytles.dart';
import 'package:round_8_mobile_safarni_team4/core/theme/font_weight_helper.dart';

class DonNotHaveAccountSec extends StatelessWidget {
  const DonNotHaveAccountSec({super.key});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: RichText(
        text: TextSpan(
          children: [
            TextSpan(
              text: 'Don\'t have an account?',
                style: AppTextStyles.font14grayColor70Regular(context).copyWith(
                  color: AppColors.grayColor[100],
                  fontWeight: FontWeightHelper.semiBold,
                ),
            ),
            TextSpan(
              text: '  Sign Up',
              style: AppTextStyles.font14grayColor70Regular(context).copyWith(
                color: AppColors.mainColorLight,
                fontWeight: FontWeightHelper.bold,
              ),
              recognizer:
                  TapGestureRecognizer()
                    ..onTap = () => context.pushNamed(AppRoutes.signupView),
            ),
          ],
        ),
      ),
    );
  }
}
