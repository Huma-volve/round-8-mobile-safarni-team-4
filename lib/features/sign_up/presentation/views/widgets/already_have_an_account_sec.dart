import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:round_8_mobile_safarni_team4/core/colors/app_colors.dart';
import 'package:round_8_mobile_safarni_team4/core/helpers/theme_extension.dart';
import 'package:round_8_mobile_safarni_team4/core/routing/app_routes.dart';
import 'package:round_8_mobile_safarni_team4/core/theme/app_text_stytles.dart';

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
              style:  AppTextStyles.font14Black90w600(context).copyWith(
                color: AppColors.black[80],
              ),
            ),
            TextSpan(
              text: ' Sign In',
              style: AppTextStyles.font14MainColorLightw600(context),
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
