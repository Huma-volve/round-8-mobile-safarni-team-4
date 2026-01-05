import 'package:flutter/material.dart';
import 'package:round_8_mobile_safarni_team4/core/colors/app_colors.dart';
import 'package:round_8_mobile_safarni_team4/core/helpers/size_config_extension.dart';
import 'package:round_8_mobile_safarni_team4/core/helpers/theme_extension.dart';
import 'package:round_8_mobile_safarni_team4/core/routing/app_routes.dart';
import 'package:round_8_mobile_safarni_team4/core/widgets/custom_button.dart';

class LoginForgotPasswordAndButtonSection extends StatelessWidget {
  const LoginForgotPasswordAndButtonSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Align(
          alignment: Alignment.centerRight,
          child: InkWell(
            onTap: () {
              context.pushNamed(AppRoutes.forgetPasswordView);  
            },
            child: Text(
              'Forgot Password ?',
              style: context.textTheme.displayMedium?.copyWith(
                fontSize: context.sp(13),
                color: AppColors.black,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
        ),

        context.gapH(24),
        CustomButton(buttonName: 'Log In', onPressed: () {}),
      ],
    );
  }
}
