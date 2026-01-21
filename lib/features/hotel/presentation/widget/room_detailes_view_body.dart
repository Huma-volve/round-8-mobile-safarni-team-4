import 'package:flutter/material.dart';
import 'package:round_8_mobile_safarni_team4/features/hotel/data/model/hotel_available_rooms/rooms_model.dart';
import 'package:round_8_mobile_safarni_team4/features/hotel/presentation/widget/custom_detailes_image.dart';
import 'package:round_8_mobile_safarni_team4/features/hotel/presentation/widget/section_detailes_view_body.dart';

class RoomDetailesViewBody extends StatelessWidget {
  const RoomDetailesViewBody({super.key, required this.room});
     final RoomItemModel room;

  @override
  Widget build(BuildContext context) {
    return   Stack(
      children: [
        SingleChildScrollView(
          child: Column(
            children: [
              CustomDetailesImage(
                room: room,
              ),
               SectionDetailesViewBody(
                room: room,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
