import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:round_8_mobile_safarni_team4/core/di/service_locator.dart';
import 'package:round_8_mobile_safarni_team4/features/hotel/presentation/maneger/hotel_available_rooms/hotel_availables_room_cubit.dart';
import 'package:round_8_mobile_safarni_team4/features/hotel/presentation/widget/available_room_body.dart';

class AvailableRoom extends StatelessWidget {
  const AvailableRoom({super.key});

  @override
  Widget build(BuildContext context) {
  
    return const Scaffold(
      body:  AvailableRoomBody(),
    );
  }
}
