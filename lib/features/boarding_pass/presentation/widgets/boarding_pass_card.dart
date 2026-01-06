import 'package:flutter/material.dart';
import 'package:round_8_mobile_safarni_team4/core/colors/app_colors.dart';
import 'package:round_8_mobile_safarni_team4/core/constants/assets_paths.dart';
import 'package:round_8_mobile_safarni_team4/core/helpers/size_config_extension.dart';
import 'package:round_8_mobile_safarni_team4/core/helpers/theme_extension.dart';

import '../../../flight_appointment/presentation/widgets/flight_card.dart';

class BoardingPassCard extends StatelessWidget {
  const BoardingPassCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: EdgeInsets.symmetric(horizontal: 24),
          height: 10,
          width: double.infinity,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            gradient: LinearGradient(
              colors: [
                const Color(0xFF1E429F).withOpacity(0.6),
                const Color(0xFF1E429F).withOpacity(0.3),
                const Color(0xFF1E429F).withOpacity(0.6),
              ],
            ),
          ),
        ),
        Expanded(
          child: Container(
            margin: EdgeInsets.symmetric(horizontal: 40),
            padding: EdgeInsets.symmetric(horizontal: 16, vertical: 12),
            decoration: ShapeDecoration(
              color: AppColors.white,
              shape: const TicketShapeBorder(radius: 16, notchRadius: 12),
              shadows: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.05),
                  blurRadius: 10,
                  offset: const Offset(0, 4),
                ),
              ],
            ),
            child: Column(
              children: [
                Expanded(
                  child: Column(
                    children: [
                      BoardingPassHeader(),
                      SizedBox(height: context.h(16)),
                      RouteInformation(),
                      SizedBox(height: context.h(16)),
                      Divider(
                        height: 0,
                        color: AppColors.gray.withOpacity(0.3),
                        thickness: 1,
                      ),
                      SizedBox(height: context.h(16)),
                      FlightDetails(),
                      SizedBox(height: context.h(16)),
                      Divider(
                        height: 0,
                        color: AppColors.gray.withOpacity(0.3),
                        thickness: 1,
                      ),
                      SizedBox(height: context.h(16)),
                      PassengerRow(),
                      Padding(
                        padding: EdgeInsets.symmetric(vertical: context.h(16)),
                        child: DashedLine(),
                      ),
                      Expanded(child: Image.asset(AssetsPaths.qrImage)),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}

class PassengerRow extends StatelessWidget {
  const PassengerRow({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.center,
      spacing: 8,
      children: [
        CircleAvatar(radius: 25, backgroundColor: AppColors.gray),
        Column(
          spacing: 4,
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Mahmoud hassan',
              style: context.textTheme.titleMedium?.copyWith(
                fontSize: 12,
              ),
            ),
            Text(
              '50 years,male',
              style: context.textTheme.bodySmall?.copyWith(
                color: AppColors.black[60],
                fontSize: 10,
              ),
            ),
          ],
        ),
        Spacer(),
        Row(
          spacing: 8,
          children: [
            Icon(Icons.bed, color: AppColors.mainColorLight),
            Text(
              '29A',
              style: context.textTheme.bodySmall?.copyWith(
                color: AppColors.black[60],
                fontSize: 10,
              ),
            ),
          ],
        ),
      ],
    );
  }
}

class DashedLine extends StatelessWidget {
  const DashedLine({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: List.generate(
        40,
        (index) => Expanded(
          child: Container(
            color:
                index % 2 == 0 ? Colors.transparent : const Color(0xFFE2E8F0),
            height: 1,
          ),
        ),
      ),
    );
  }
}

class BoardingPassHeader extends StatelessWidget {
  const BoardingPassHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Column(
          spacing: 4,
          children: [
            ImageIcon(AssetImage(AssetsPaths.canadaLogo), color: AppColors.red),
            Text(
              'Air canada',
              style: context.textTheme.titleSmall?.copyWith(
                fontSize: context.sp(12),
                fontWeight: FontWeight.w600,
              ),
            ),
          ],
        ),
        Spacer(),
        Text(
          'December 16h, 2022',
          style: context.textTheme.titleSmall?.copyWith(
            fontSize: context.sp(12),
          ),
        ),
      ],
    );
  }
}

class RouteInformation extends StatelessWidget {
  const RouteInformation({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          spacing: 12,
          children: [
            Text(
              '07h05',
              style: context.textTheme.titleMedium?.copyWith(
                fontSize: context.sp(14),
                fontWeight: FontWeight.w500,
              ),
            ),
            Text(
              'YUL',
              style: context.textTheme.bodySmall?.copyWith(
                color: AppColors.black[60],
                fontWeight: FontWeight.w600,
              ),
            ),
          ],
        ),
        Column(
          spacing: 12,
          children: [
            ImageIcon(AssetImage(AssetsPaths.planeIcon), size: 20),
            Text(
              '13h00',
              style: context.textTheme.bodySmall?.copyWith(
                color: AppColors.black[60],
                fontWeight: FontWeight.w600,
                fontSize: context.sp(10),
              ),
            ),
          ],
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          spacing: 12,
          children: [
            Text(
              '20h05',
              style: context.textTheme.titleMedium?.copyWith(
                fontSize: context.sp(14),
                fontWeight: FontWeight.w500,
              ),
            ),
            Text(
              'NRT',
              style: context.textTheme.bodySmall?.copyWith(
                color: AppColors.black[60],
                fontWeight: FontWeight.w600,
              ),
            ),
          ],
        ),
      ],
    );
  }
}

class FlightDetails extends StatelessWidget {
  const FlightDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        BuildInfoItem(value: '9', label: 'Gate'),
        BuildInfoItem(value: '6', label: 'Seat'),
        BuildInfoItem(value: '3', label: 'Terminal'),
        BuildInfoItem(value: 'AC006', label: 'Flight'),
      ],
    );
  }
}

class BuildInfoItem extends StatelessWidget {
  const BuildInfoItem({super.key, required this.value, required this.label});

  final String value;
  final String label;

  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 8,
      children: [
        Text(
          value,
          style: context.textTheme.bodyLarge?.copyWith(
            fontWeight: FontWeight.w700,
            color: AppColors.black[60],
            fontSize: context.sp(12),
          ),
        ),

        Text(
          label,
          style: context.textTheme.labelMedium?.copyWith(
            fontWeight: FontWeight.w500,
          ),
        ),
      ],
    );
  }
}
