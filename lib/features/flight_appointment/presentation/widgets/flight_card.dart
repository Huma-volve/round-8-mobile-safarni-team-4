import 'package:flutter/material.dart';
import 'package:round_8_mobile_safarni_team4/core/constants/assets_paths.dart';
import '../../../../core/colors/app_colors.dart';
import 'package:google_fonts/google_fonts.dart';

class FlightCard extends StatelessWidget {
  final String pickupTime;
  final String pickupAirport;
  final String arrivalTime;
  final String arrivalAirport;
  final String airline;
  final String price;
  final String duration;
  final String? layover;

  const FlightCard({
    super.key,
    required this.pickupTime,
    required this.pickupAirport,
    required this.arrivalTime,
    required this.arrivalAirport,
    required this.airline,
    required this.price,
    required this.duration,
    this.layover,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
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
      child: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                _buildTimeColumn(pickupTime, pickupAirport),
                _buildFlightDuration(),
                _buildTimeColumn(arrivalTime, arrivalAirport),
              ],
            ),
            const SizedBox(height: 16),
            if (layover != null) ...[
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  layover!,
                  style: GoogleFonts.poppins(
                    fontSize: 12,
                    color: AppColors.gray,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
              const SizedBox(height: 8),
            ],
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  airline,
                  style: GoogleFonts.poppins(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    color: AppColors.black,
                  ),
                ),
                Text(
                  price,
                  style: GoogleFonts.poppins(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    color: AppColors.black,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildTimeColumn(String time, String airport) {
    return Column(
      children: [
        Text(
          time,
          style: GoogleFonts.poppins(
            fontSize: 16,
            fontWeight: FontWeight.w600,
            color: AppColors.black,
          ),
        ),
        const SizedBox(height: 4),
        Text(
          airport,
          style: GoogleFonts.poppins(
            fontSize: 14,
            fontWeight: FontWeight.w500,
            color: AppColors.gray,
          ),
        ),
      ],
    );
  }

  Widget _buildFlightDuration() {
    return Column(
      children: [
        ImageIcon(
          AssetImage(AssetsPaths.planeIcon),
          color: AppColors.black,
          size: 20,
        ),
        const SizedBox(height: 4),
        Text(
          duration,
          style: GoogleFonts.poppins(
            fontSize: 12,
            fontWeight: FontWeight.w500,
            color: AppColors.black,
          ),
        ),
      ],
    );
  }
}

class TicketShapeBorder extends ShapeBorder {
  final double radius;
  final double notchRadius;

  const TicketShapeBorder({required this.radius, required this.notchRadius});

  @override
  EdgeInsetsGeometry get dimensions => EdgeInsets.zero;

  @override
  Path getInnerPath(Rect rect, {TextDirection? textDirection}) {
    return getOuterPath(rect, textDirection: textDirection);
  }

  @override
  Path getOuterPath(Rect rect, {TextDirection? textDirection}) {
    final path = Path();
    path.moveTo(rect.left + radius, rect.top);
    path.lineTo(rect.right - radius, rect.top);
    path.quadraticBezierTo(rect.right, rect.top, rect.right, rect.top + radius);

    // Right notch
    path.lineTo(rect.right, rect.top + rect.height / 2 - notchRadius);
    path.arcToPoint(
      Offset(rect.right, rect.top + rect.height / 2 + notchRadius),
      radius: Radius.circular(notchRadius),
      clockwise: false,
    );
    path.lineTo(rect.right, rect.bottom - radius);
    path.quadraticBezierTo(
      rect.right,
      rect.bottom,
      rect.right - radius,
      rect.bottom,
    );

    path.lineTo(rect.left + radius, rect.bottom);
    path.quadraticBezierTo(
      rect.left,
      rect.bottom,
      rect.left,
      rect.bottom - radius,
    );

    // Left notch
    path.lineTo(rect.left, rect.top + rect.height / 2 + notchRadius);
    path.arcToPoint(
      Offset(rect.left, rect.top + rect.height / 2 - notchRadius),
      radius: Radius.circular(notchRadius),
      clockwise: false,
    );
    path.lineTo(rect.left, rect.top + radius);
    path.quadraticBezierTo(rect.left, rect.top, rect.left + radius, rect.top);

    path.close();
    return path;
  }

  @override
  void paint(Canvas canvas, Rect rect, {TextDirection? textDirection}) {}

  @override
  ShapeBorder scale(double t) {
    return TicketShapeBorder(radius: radius * t, notchRadius: notchRadius * t);
  }
}
