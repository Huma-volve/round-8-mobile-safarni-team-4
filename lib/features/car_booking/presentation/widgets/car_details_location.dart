import 'package:flutter/material.dart';
import 'package:round_8_mobile_safarni_team4/core/helpers/size_config_extension.dart';
import 'package:round_8_mobile_safarni_team4/core/helpers/theme_extension.dart';

class CarDetailsLocation extends StatelessWidget {
  const CarDetailsLocation({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: Colors.grey.shade200),
      ),
      child: Row(
        spacing: 12,
        children: [
          const Icon(Icons.location_on_outlined, color: Colors.grey, size: 20),
          Text(
            '200-298 Clipper St San Francisco',
            style: context.textTheme.labelMedium?.copyWith(
              color: Colors.grey.shade600,
              fontSize: context.sp(10),
            ),
          ),
        ],
      ),
    );
  }
}
