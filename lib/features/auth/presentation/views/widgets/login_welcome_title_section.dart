import 'package:flutter/material.dart';
import 'package:round_8_mobile_safarni_team4/core/helpers/size_config_extension.dart';
import 'package:round_8_mobile_safarni_team4/core/helpers/theme_extension.dart';

class LoginWelcomeTitleSection extends StatelessWidget {
  const LoginWelcomeTitleSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          'Welcome Again',
          style: context.textTheme.displayLarge?.copyWith(
            fontSize: context.sp(18),
          ),
        ),
        context.gapH(8),
        Text(
          'welcome back! please fill your Data',
          style: context.textTheme.displayMedium?.copyWith(
            fontSize: context.sp(14),
            color: Colors.grey,
          ),
        ),
      ],
    );
  }
}
