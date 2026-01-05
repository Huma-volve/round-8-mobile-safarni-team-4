import 'package:flutter/material.dart';
import 'package:round_8_mobile_safarni_team4/core/colors/app_colors.dart';
import 'package:round_8_mobile_safarni_team4/core/helpers/size_config_extension.dart';
import 'package:round_8_mobile_safarni_team4/core/helpers/theme_extension.dart';

class SeatItem extends StatelessWidget {
  final int seatNumber;
  final SeatState state;
  final VoidCallback onTap;

  const SeatItem({
    super.key,
    required this.seatNumber,
    required this.state,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: state == SeatState.unavailable ? null : onTap,
      child: Container(
        width: context.w(45),
        height: context.h(45),
        decoration: BoxDecoration(
          color: _getColor(),
          borderRadius: BorderRadius.circular(4),
        ),
        child: Center(
          child: Text(
            '$seatNumber',
            style: context.textTheme.labelMedium?.copyWith(
              color:
                  state == SeatState.available
                      ? AppColors.white
                      : AppColors.black,
              fontWeight: FontWeight.w400,
              fontSize: context.sp(12),
            ),
          ),
        ),
      ),
    );
  }

  Color _getColor() {
    switch (state) {
      case SeatState.available:
        return AppColors.mainColorLight;
      case SeatState.selected:
        return AppColors.green;
      case SeatState.unavailable:
        return AppColors.gray;
    }
  }
}

enum SeatState { available, selected, unavailable }
