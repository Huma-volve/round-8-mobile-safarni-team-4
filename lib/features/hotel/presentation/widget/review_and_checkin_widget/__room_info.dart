import 'package:flutter/material.dart';
import 'package:round_8_mobile_safarni_team4/core/theme/app_theme.dart';

class RoomInfo extends StatelessWidget {
  const RoomInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text("room_1", style: AppThemes.light.textTheme.titleLarge),
        const SizedBox(height: 4),
        const Text(
          "1012 Ocean Avenue, New York, USA",
          style: TextStyle(fontSize: 13, color: Color(0xff6B7280)),
        ),
      ],
    );
  }
}
