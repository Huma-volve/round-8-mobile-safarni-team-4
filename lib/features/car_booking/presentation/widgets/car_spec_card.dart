import 'package:flutter/material.dart';
import 'package:round_8_mobile_safarni_team4/core/helpers/size_config_extension.dart';
import 'package:round_8_mobile_safarni_team4/core/helpers/theme_extension.dart';

class CarSpecCard extends StatelessWidget {
  final String label;
  final String value;

  const CarSpecCard({super.key, required this.label, required this.value});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: Colors.grey.shade100),
      ),
      child: Column(
        spacing: 8,
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            label,
            style: context.textTheme.labelLarge?.copyWith(
              fontWeight: FontWeight.w600,
              fontSize: context.sp(12),
            ),
          ),
          Text(
            value,
            style: context.textTheme.labelSmall?.copyWith(
              color: Colors.grey.shade600,
              fontSize: context.sp(10),
            ),
          ),
        ],
      ),
    );
  }
}
