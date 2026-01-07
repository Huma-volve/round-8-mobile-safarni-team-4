import 'package:flutter/material.dart';
import 'package:round_8_mobile_safarni_team4/core/helpers/size_config_extension.dart';
import 'package:round_8_mobile_safarni_team4/core/helpers/theme_extension.dart';

class CarSectionHeader extends StatelessWidget {
  final String title;

  const CarSectionHeader({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: context.textTheme.titleLarge?.copyWith(
        fontSize: context.sp(14),
        fontWeight: FontWeight.w400,
      ),
    );
  }
}
