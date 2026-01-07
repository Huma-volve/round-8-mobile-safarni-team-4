import 'package:flutter/material.dart';
import 'package:round_8_mobile_safarni_team4/core/colors/app_colors.dart';
import '../../../../core/constants/assets_paths.dart';

class CarSearchBar extends StatelessWidget {
  const CarSearchBar({super.key});

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        hintText: 'Search ...',
        prefixIcon: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12),
          child: Image.asset(AssetsPaths.searchIcon, width: 20, height: 20),
        ),
      ),
    );
  }
}
