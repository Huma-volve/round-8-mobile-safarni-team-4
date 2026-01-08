import 'package:flutter/material.dart';

import '../../../../core/colors/app_colors.dart';

class PayPalBody extends StatelessWidget {
  const PayPalBody({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Full Name',
            style: Theme.of(context).textTheme.titleMedium?.copyWith(
              fontWeight: FontWeight.w600,
              color: AppColors.black,
            ),
          ),
          const SizedBox(height: 8),
          const TextField(decoration: InputDecoration(hintText: 'Your full name')),
          const SizedBox(height: 16),
          Text(
            'Your Email',
            style: Theme.of(context).textTheme.titleMedium?.copyWith(
              fontWeight: FontWeight.w600,
              color: AppColors.black,
            ),
          ),
          const SizedBox(height: 8),
          const TextField(decoration: InputDecoration(hintText: 'Type your email')),
        ],
      ),
    );
  }
}