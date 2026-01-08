import 'package:flutter/material.dart';
import 'package:round_8_mobile_safarni_team4/core/helpers/size_config_extension.dart';
import 'package:round_8_mobile_safarni_team4/core/theme/app_text_stytles.dart';

class HotelBookingItemLocationSec extends StatelessWidget {
  const HotelBookingItemLocationSec({super.key, required this.location});

  final String location;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(
          Icons.location_on_outlined,
          color: Colors.grey[600],
          size: context.w(18),
        ),
        context.gapW(4),
        Text(
          location,
          style: AppTextStyles.font14Black90w600(context).copyWith(
            color: Colors.grey[600],
            fontSize: context.sp(12),
            fontWeight: FontWeight.w600,
          ),
        ),
      ],
    );
  }
}
