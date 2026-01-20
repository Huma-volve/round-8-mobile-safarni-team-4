import 'package:flutter/material.dart';
import 'package:round_8_mobile_safarni_team4/features/hotel/data/model/hotel_available_rooms/rooms_model.dart';
import 'package:round_8_mobile_safarni_team4/features/hotel/presentation/widget/bottom_price_bar.dart';
import 'package:round_8_mobile_safarni_team4/features/hotel/presentation/widget/room_detailes_view_body.dart';

class RoomDetailesView extends StatelessWidget {
  const RoomDetailesView({super.key , required this.room});
  final RoomItemModel room;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomPriceBar(pricePerNight: room.pricePerNight),
      body:   RoomDetailesViewBody(
        room: room,
      ),
    );
  }
}
