import 'package:flutter/material.dart';
import 'package:round_8_mobile_safarni_team4/core/colors/app_colors.dart';
import 'package:round_8_mobile_safarni_team4/core/helpers/size_config_extension.dart';
import 'package:round_8_mobile_safarni_team4/core/helpers/theme_extension.dart';

class WelcomeDescriptionSection extends StatelessWidget {
  const WelcomeDescriptionSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 1,
      child: Text(
        'Safarni is your all-in-one travel guide. Discover destinations, compare trip prices, book flights, hotels, car rentals, and local tours — all through one interactive experience.',
        textAlign: TextAlign.center,
        style: context.textTheme.displayMedium?.copyWith(
          fontSize: context.sp(14),
          color: AppColors.black[80],
        ),
      ),
    );
  }
}
