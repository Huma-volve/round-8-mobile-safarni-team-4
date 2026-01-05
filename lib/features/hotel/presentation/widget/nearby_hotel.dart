import 'package:flutter/material.dart';
import 'package:round_8_mobile_safarni_team4/features/hotel/presentation/widget/custom_text_header.dart';
import 'package:round_8_mobile_safarni_team4/features/hotel/presentation/widget/list_view_nearby_hotel_item.dart';

class NearbyHotel extends StatelessWidget {
  const NearbyHotel({super.key});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Column(
        children: [
          CustomTextHeader(
            title: 'Nearby Hotels',
            textButton: 'See All',
            onPressed: () {},
          ),
          Flexible(child: ListViewNearbyHotelItem()),
        ],
      ),
    );
  }
}
