import 'package:flutter/material.dart';
import '../../../../core/colors/app_colors.dart';

class FlightBookingHeader extends StatelessWidget {
  const FlightBookingHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: NetworkImage(
            'https://images.unsplash.com/photo-1436491865332-7a61a109cc05?q=80&w=2074&auto=format&fit=crop',
          ),
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
                'Book Your Flight',
                style: Theme.of(context).textTheme.titleLarge?.copyWith(
                  color: AppColors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
