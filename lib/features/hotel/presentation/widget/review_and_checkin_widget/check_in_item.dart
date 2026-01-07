import 'package:flutter/material.dart';
import 'package:round_8_mobile_safarni_team4/core/theme/app_theme.dart';

class CheckInItem extends StatelessWidget {
  const CheckInItem({
    super.key,
    required this.day,
    required this.date,
    this.isSelected = false,
  });

  final String day;
  final String date;
  final bool isSelected;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          day,
          style: AppThemes.light.textTheme.titleLarge?.copyWith(
            color: isSelected ? Colors.white : Colors.black,
          ),
        ),
        Text(
          date,
          style: AppThemes.light.textTheme.titleLarge?.copyWith(
            color: isSelected ? Colors.white : Colors.black,
          ),
        ),
      ],
    );
  }
}
