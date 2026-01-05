import 'package:flutter/material.dart';
import '../../../../core/colors/app_colors.dart';
import '../../../../core/constants/assets_paths.dart';

class FlightBookingHeader extends StatelessWidget {
  const FlightBookingHeader({super.key, required this.title});
  final String title;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(AssetsPaths.planeImage),
          fit: BoxFit.cover,
        ),
      ),
      child: Stack(
        children: [
          Positioned(
            top: MediaQuery.paddingOf(context).top + 16,
            left: 16,
            child: Icon(Icons.arrow_back_ios, color: AppColors.white, size: 24),
          ),
          Positioned(
            top: MediaQuery.paddingOf(context).top + 16,
            left: 0,
            right: 0,
            child: Center(
              child: Text(
                title,
                style: Theme.of(context).textTheme.displayLarge?.copyWith(
                  color: AppColors.white,
                  fontSize: 18,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
