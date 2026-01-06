import 'package:flutter/material.dart';
import 'package:round_8_mobile_safarni_team4/core/helpers/size_config_extension.dart';
import 'package:round_8_mobile_safarni_team4/core/helpers/theme_extension.dart';

class WelcomeTitleSection extends StatelessWidget {
  const WelcomeTitleSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 1,
      child: Text(
        'Welcome',
        style: context.textTheme.titleLarge?.copyWith(fontSize: context.sp(32),),
      ),
    );
  }
}
