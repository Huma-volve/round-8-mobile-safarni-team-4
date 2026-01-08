import 'package:flutter/material.dart';
import 'package:round_8_mobile_safarni_team4/core/helpers/size_config_extension.dart';
import '../../../../core/constants/assets_paths.dart';

class CarHeroBanner extends StatelessWidget {
  const CarHeroBanner({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        image: DecorationImage(
          image: AssetImage(AssetsPaths.carBg),
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
