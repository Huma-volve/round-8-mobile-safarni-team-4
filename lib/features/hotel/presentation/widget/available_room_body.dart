import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:round_8_mobile_safarni_team4/core/di/mohamed_di.dart';
import 'package:round_8_mobile_safarni_team4/features/hotel/presentation/widget/available_room_item.dart';
import 'package:round_8_mobile_safarni_team4/features/hotel/presentation/widget/custom_hotel_header.dart';
import 'package:round_8_mobile_safarni_team4/features/hotel/presentation/widget/custom_text_header.dart';

import '../maneger/hotel_detailes/hotel_availables_room_cubit.dart'
    show HotelRoomsCubit;
import '../maneger/hotel_detailes/hotel_availables_room_state.dart';

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
        SliverGrid.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
          ),
          itemBuilder:
              (context, index) => BlocProvider(
                create: (context) => getIt<HotelRoomsCubit>(),
                child: BlocBuilder<HotelRoomsCubit, HotelRoomsState>(
                  builder: (context, state) {
                    if (state is HotelRoomsLoading) {
                      return const Center(child: CircularProgressIndicator());
                    } else if (state is HotelRoomsSuccess) {
                      return AvailableRoomItem(rooms: state.rooms[index]);
                    } else {
                      return const Text('No Rooms');
                    }
                  },
                ),
              ),
          itemCount: 10,
        ),
      ],
    );
  }
}
