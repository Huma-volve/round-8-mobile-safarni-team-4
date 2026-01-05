import 'package:flutter/material.dart';
import 'package:round_8_mobile_safarni_team4/features/hotel/presentation/widget/custom_hotel_header.dart';
import 'package:round_8_mobile_safarni_team4/features/hotel/presentation/widget/list_hotel_recommendation.dart';
import 'package:round_8_mobile_safarni_team4/features/hotel/presentation/widget/nearby_hotel.dart';

class HotelViewBody extends StatelessWidget {
  const HotelViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverToBoxAdapter(child: CustomHotelHeader()),
        SliverToBoxAdapter(
          child: SizedBox(height: 250.0, child: ListHotelRecommendation()),
        ),
        SliverFillRemaining(child: NearbyHotel()),
      ],
    );
  }
}
 
              // Flexible(child: ListHotelRecommendation()),
              // NearbyHotel(),
