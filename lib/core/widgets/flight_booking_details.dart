import 'package:flutter/material.dart';
import 'package:round_8_mobile_safarni_team4/core/colors/app_colors.dart';
import 'package:round_8_mobile_safarni_team4/core/helpers/size_config_extension.dart';
import '../../features/boarding_pass/presentation/widgets/boarding_pass_card.dart';

class FlightBookingDetails extends StatelessWidget {
  const FlightBookingDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        BoardingPassHeader(),
        SizedBox(height: context.h(16)),
        RouteInfo(),
        SizedBox(height: context.h(16)),
        Divider(
          height: 0,
          color: AppColors.gray.withOpacity(0.3),
          thickness: 1,
        ),
        SizedBox(height: context.h(16)),
        FlightDetails(),
      ],
    );
  }
}
