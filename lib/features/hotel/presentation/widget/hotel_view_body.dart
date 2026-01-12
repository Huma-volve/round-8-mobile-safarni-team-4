import 'package:flutter/material.dart';
import 'package:round_8_mobile_safarni_team4/features/hotel/presentation/widget/custom_hotel_header.dart';
import 'package:round_8_mobile_safarni_team4/features/hotel/presentation/widget/custom_text_header.dart';
import 'package:round_8_mobile_safarni_team4/features/hotel/presentation/widget/list_hotel_recommendation.dart';
import 'package:round_8_mobile_safarni_team4/features/hotel/presentation/widget/nearby_hotel.dart';

class HotelViewBody extends StatelessWidget {
  const HotelViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        const SliverToBoxAdapter(child: CustomHotelHeader()),
        SliverToBoxAdapter(
          child: CustomTextHeader(
            title: 'Recommended Hotels',
            textButton: 'See All',
            onPressed: () {
              // Get.toNamed('/all-hotels');
            },
          ),
        ),
        const SliverToBoxAdapter(child: ListHotelRecommendation()),
        const SliverFillRemaining(child: NearbyHotel()),
      ],
    );
  }
}

// Flexible(child: ListHotelRecommendation()),
// NearbyHotel(),
