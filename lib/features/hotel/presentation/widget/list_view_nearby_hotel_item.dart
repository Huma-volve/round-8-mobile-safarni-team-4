import 'package:flutter/material.dart';
import 'package:round_8_mobile_safarni_team4/features/hotel/data/model/list_model.dart';
import 'package:round_8_mobile_safarni_team4/features/hotel/presentation/widget/nearby_hotel_item.dart';

class ListViewNearbyHotelItem extends StatelessWidget {
  const ListViewNearbyHotelItem({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      scrollDirection: Axis.vertical,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: listHotelModel.length,
      itemBuilder: (context, index) {
        return NearbyHotelItem(hotelModel: listHotelModel[index]);
      },
    );
  }
}
