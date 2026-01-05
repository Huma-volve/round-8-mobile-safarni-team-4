import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:round_8_mobile_safarni_team4/core/colors/app_colors.dart';
import 'package:round_8_mobile_safarni_team4/core/helpers/size_config_extension.dart';
import 'package:round_8_mobile_safarni_team4/core/helpers/theme_extension.dart';
import 'package:round_8_mobile_safarni_team4/core/routing/app_routes.dart';

class HaveAnAccountSec extends StatelessWidget {
  const HaveAnAccountSec({super.key});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: RichText(
        text: TextSpan(
          children: [
            TextSpan(
              text: 'Already Have an account?',
              style: context.textTheme.displayMedium?.copyWith(
                fontSize: context.sp(14),
                color: AppColors.black[80],
                fontWeight: FontWeight.w600,
              ),
            ),
            TextSpan(
              text: ' Sign In',
              style: context.textTheme.displayMedium?.copyWith(
                fontSize: context.sp(14),
                color: AppColors.mainColorLight,
                fontWeight: FontWeight.w600,
              ),
              recognizer:
                  TapGestureRecognizer()
                    ..onTap = () => context.pushNamed(AppRoutes.loginView),
            ),
          ],
        ),
      ),
    );
  }
}
