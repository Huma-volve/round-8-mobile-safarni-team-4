import 'package:flutter/material.dart';
import 'package:round_8_mobile_safarni_team4/core/helpers/theme_extension.dart';

class CarInfoItem extends StatelessWidget {
  final String label;
  const CarInfoItem({super.key, required this.label});

  @override
  Widget build(BuildContext context) {
    return Text(
      label,
      style: context.textTheme.bodySmall?.copyWith(
        color: Colors.grey.shade500,
        fontWeight: FontWeight.w400,
      ),
    );
  }
}
