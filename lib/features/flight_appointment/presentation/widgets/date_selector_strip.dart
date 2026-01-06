import 'package:flutter/material.dart';
import '../../../../core/colors/app_colors.dart';

class DateSelectorStrip extends StatelessWidget {
  const DateSelectorStrip({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24.0),
      child: Row(
        spacing: 8,
        children: [
          Expanded(
            child: DateCard(
              icon: Icons.calendar_today_outlined,
              text: "Dec 16th, 2025",
            ),
          ),
          Expanded(
            child: DateCard(icon: Icons.person_outline, text: "Jan 6th,2025"),
          ),
        ],
      ),
    );
  }
}

class DateCard extends StatelessWidget {
  final IconData icon;
  final String text;

  const DateCard({super.key, required this.icon, required this.text});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 16),
      decoration: BoxDecoration(
        color: AppColors.white,
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.05),
            blurRadius: 10,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(icon, size: 18, color: AppColors.black),
          const SizedBox(width: 8),
          Text(
            text,
            style: theme.textTheme.titleSmall?.copyWith(
              fontSize: 12
            ),
          ),
        ],
      ),
    );
  }
}
