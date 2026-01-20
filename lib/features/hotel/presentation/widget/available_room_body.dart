import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:round_8_mobile_safarni_team4/core/di/mohamed_di.dart';
import 'package:round_8_mobile_safarni_team4/features/hotel/presentation/widget/available_room_item.dart';
import 'package:round_8_mobile_safarni_team4/features/hotel/presentation/widget/custom_hotel_header.dart';
import 'package:round_8_mobile_safarni_team4/features/hotel/presentation/widget/custom_text_header.dart';

import '../maneger/hotel_available_rooms/hotel_availables_room_cubit.dart'
    show HotelAvailableRoomsCubit;
import '../maneger/hotel_available_rooms/hotel_availables_room_state.dart';

class AvailableRoomBody extends StatelessWidget {
  const AvailableRoomBody({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        const SliverToBoxAdapter(child: CustomHotelHeader()),
        SliverToBoxAdapter(
          child: CustomTextHeader(
            title: 'Available Rooms',
            textButton: 'See All',
            onPressed: () {},
          ),
        ),

        BlocBuilder<HotelAvailableRoomsCubit, HotelRoomsState>(
          builder: (context, state) {
            if (state is HotelRoomsLoading) {
              return const SliverToBoxAdapter(
                child: Center(child: CircularProgressIndicator()),
              );
            }
        
            if (state is HotelRoomsSuccess) {
              return SliverGrid.builder(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                ),
                itemCount: state.rooms.length,
                itemBuilder: (context, index) {
                  return AvailableRoomItem(rooms: state.rooms[index]);
                },
              );
            }
        
            if (state is HotelRoomsError) {
              return SliverToBoxAdapter(
                child: Center(child: Text(state.message)),
              );
            }
        
            return const SliverToBoxAdapter(
              child: Center(child: Text('No Rooms')),
            );
          },
        ),
      ],
    );
  }
}
