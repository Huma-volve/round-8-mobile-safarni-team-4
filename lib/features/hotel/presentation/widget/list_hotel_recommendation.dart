import 'package:flutter/material.dart';
import 'package:round_8_mobile_safarni_team4/features/hotel/data/model/list_model.dart';
import 'package:round_8_mobile_safarni_team4/features/hotel/presentation/widget/hotel_recommendation.dart';

class ListHotelRecommendation extends StatelessWidget {
  const ListHotelRecommendation({super.key});

  @override
  Widget build(BuildContext context) {
    final hieght = MediaQuery.of(context).size.height;
    print("hieght $hieght");
    return ListView.builder(
      scrollDirection: Axis.horizontal,
      itemCount: listHotelModel.length,
      itemBuilder: (context, index) {
        return HotelRecommendation(hotelModel: listHotelModel[index]);
      },
    );
  }
}
