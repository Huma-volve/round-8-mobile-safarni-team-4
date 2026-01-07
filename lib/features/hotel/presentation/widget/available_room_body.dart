import 'package:flutter/material.dart';
import 'package:round_8_mobile_safarni_team4/features/hotel/presentation/widget/available_room_item.dart';
import 'package:round_8_mobile_safarni_team4/features/hotel/presentation/widget/custom_hotel_header.dart';
import 'package:round_8_mobile_safarni_team4/features/hotel/presentation/widget/custom_text_header.dart';

class AvailableRoomBody extends StatelessWidget {
  const AvailableRoomBody({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverToBoxAdapter(child: CustomHotelHeader()),
        SliverToBoxAdapter(
          child: CustomTextHeader(
            title: 'Available Rooms',
            textButton: 'See All',
            onPressed: () {
              
            },
          ),
        ),
        SliverGrid.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
          ),
          itemBuilder: (context, index) => AvailableRoomItem(),
          itemCount: 10,
        ),
      ],
    );
  }
}
