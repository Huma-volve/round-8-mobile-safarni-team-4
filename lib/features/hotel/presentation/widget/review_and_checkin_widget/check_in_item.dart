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
    return Container(
      alignment: Alignment.center,
      margin: const EdgeInsets.only(right: 16),
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      decoration: BoxDecoration(
        color: isSelected ? Colors.blue : Colors.grey.shade200,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
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
      ),
    );
  }
}
