import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:round_8_mobile_safarni_team4/core/di/service_locator.dart';
import 'package:round_8_mobile_safarni_team4/features/hotel/presentation/maneger/hotel/hotel_cubit.dart';
import 'package:round_8_mobile_safarni_team4/features/hotel/presentation/maneger/hotel/hotel_state.dart';
import 'package:round_8_mobile_safarni_team4/features/hotel/presentation/widget/hotel_recommendation.dart';

class ListHotelRecommendation extends StatelessWidget {
  const ListHotelRecommendation({super.key});
  @override
  Widget build(BuildContext context) {
    final hieght = MediaQuery.of(context).size.height;
    return BlocProvider(
      create: (context) => getIt<HotelCubit>()..fetchHotels(),
      child: BlocBuilder<HotelCubit, HotelState>(
        builder: (context, state) {
          if (state is HotelLoading) {
            return const Center(child: CircularProgressIndicator());
          }

          if (state is HotelSuccess) {
            return SizedBox(
              height: hieght * 0.35,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: state.hotels.length,
                itemBuilder: (context, index) {
                  return HotelRecommendation(hotelModel: state.hotels[index]);
                },
              ),
            );
          }

          if (state is HotelError) {
            return Center(child: Text(state.message));
          }

          return const SizedBox();
        },
      ),
    );
  }
}
