import 'package:flutter/material.dart';
import 'package:round_8_mobile_safarni_team4/core/theme/app_text_stytles.dart';

class WelcomeTitleSection extends StatelessWidget {
  const WelcomeTitleSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 1,
      child: Text(
        'Welcome',
        style: AppTextStyles.font32grayColor100SemiBold(context),
      ),
    );
  }
}
