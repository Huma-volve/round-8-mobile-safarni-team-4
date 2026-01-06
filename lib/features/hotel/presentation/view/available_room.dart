import 'package:flutter/material.dart';
import 'package:round_8_mobile_safarni_team4/core/theme/app_theme.dart';
import 'package:round_8_mobile_safarni_team4/features/hotel/presentation/widget/available_room_body.dart';
import 'package:round_8_mobile_safarni_team4/features/hotel/presentation/widget/available_room_item.dart';
import 'package:round_8_mobile_safarni_team4/features/hotel/presentation/widget/custom_hotel_header.dart';
import 'package:round_8_mobile_safarni_team4/features/hotel/presentation/widget/custom_text_header.dart';

class AvailableRoom extends StatelessWidget {
  const AvailableRoom({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(body: AvailableRoomBody());
  }
}
