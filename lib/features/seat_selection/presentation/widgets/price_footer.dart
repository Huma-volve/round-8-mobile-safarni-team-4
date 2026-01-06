import 'package:flutter/material.dart';
import 'package:round_8_mobile_safarni_team4/core/colors/app_colors.dart';
import 'package:round_8_mobile_safarni_team4/core/helpers/size_config_extension.dart';
import 'package:round_8_mobile_safarni_team4/core/helpers/theme_extension.dart';

class PriceFooter extends StatelessWidget {
  final double ticketPrice;
  final double totalPrice;
  final List<int> selectedSeats;
  final VoidCallback onContinue;

  const PriceFooter({
    super.key,
    required this.ticketPrice,
    required this.totalPrice,
    required this.selectedSeats,
    required this.onContinue,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: context.w(24),
        vertical: context.h(20),
      ),
      child: Column(
        children: [
          _buildPriceRow(context, "Ticket price", ticketPrice),
          SizedBox(height: context.h(8)),
          _buildPriceRow(context, "Total Price", totalPrice),
          SizedBox(height: context.h(8)),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "your Seat",
                style: context.textTheme.labelLarge?.copyWith(
                  fontWeight: FontWeight.w400,
                  fontSize: context.sp(12),
                ),
              ),
              Text(
                selectedSeats.isEmpty ? "-" : selectedSeats.join(", "),
                style: context.textTheme.labelLarge?.copyWith(
                  fontWeight: FontWeight.bold,
                  color: AppColors.mainColorLight, // Blue
                  fontSize: context.sp(12),
                ),
              ),
            ],
          ),
          SizedBox(height: context.h(24)),
          SizedBox(
            width: double.infinity,
            child: FilledButton(onPressed: onContinue, child: Text('Continue')),
          ),
        ],
      ),
    );
  }

  Widget _buildPriceRow(BuildContext context, String label, double price) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          label,
          style: context.textTheme.labelLarge?.copyWith(
            fontWeight: FontWeight.w400,
            fontSize: context.sp(12),
          ),
        ),
        Text(
          "\$${price.toStringAsFixed(2)}",
          style: context.textTheme.labelLarge?.copyWith(
            fontWeight: FontWeight.bold,
            color: AppColors.mainColorLight, // Blue
            fontSize: context.sp(12),
          ),
        ),
      ],
    );
  }
}
