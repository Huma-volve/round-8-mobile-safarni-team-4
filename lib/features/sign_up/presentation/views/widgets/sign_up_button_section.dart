import 'package:flutter/material.dart';
import 'package:round_8_mobile_safarni_team4/core/helpers/theme_extension.dart';
import 'package:round_8_mobile_safarni_team4/core/routing/app_routes.dart';
import 'package:round_8_mobile_safarni_team4/core/widgets/custom_button.dart';

class SignUpButtonSec extends StatelessWidget {
  const SignUpButtonSec({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomButton(
      buttonName: 'Sign Up',
      onPressed: () {
        context.pushNamed(AppRoutes.home);
      },
    );
  }
}
