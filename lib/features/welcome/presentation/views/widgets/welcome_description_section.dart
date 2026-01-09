import 'package:flutter/material.dart';
import 'package:round_8_mobile_safarni_team4/core/theme/app_text_stytles.dart';

class WelcomeDescriptionSection extends StatelessWidget {
  const WelcomeDescriptionSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 1,
      child: Text(
        'Safarni is your all-in-one travel guide. Discover destinations, compare trip prices, book flights, hotels, car rentals, and local tours — all through one interactive experience.',
        textAlign: TextAlign.center,
        style: AppTextStyles.font14grayColor70Regular(context),
      ),
    );
  }
}
