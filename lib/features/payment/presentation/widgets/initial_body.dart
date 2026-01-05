import 'package:flutter/material.dart';

import '../../../../core/colors/app_colors.dart';

class InitialBody extends StatelessWidget {
  const InitialBody({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.end,
      spacing: 8,
      children: [
        Text(
          'Add Card',
          style: Theme.of(context).textTheme.titleMedium?.copyWith(
            fontWeight: FontWeight.w600,
            color: AppColors.black,
          ),
        ),
        GestureDetector(
            onTap: (){},
            child: Icon(Icons.add_circle_outline)),
      ],
    );
  }
}