
import 'package:flutter/material.dart';
import 'package:round_8_mobile_safarni_team4/core/theme/app_theme.dart';
import 'package:round_8_mobile_safarni_team4/features/hotel/data/model/get_all_hotels/hotel_model.dart';
import 'package:round_8_mobile_safarni_team4/features/hotel/presentation/view/available_room.dart';
import 'package:round_8_mobile_safarni_team4/features/hotel/presentation/widget/custom_discount_and_rationg.dart';
import 'package:round_8_mobile_safarni_team4/features/hotel/presentation/widget/custom_location.dart';
import 'package:cached_network_image/cached_network_image.dart';
class HotelRecommendation extends StatelessWidget {
  const HotelRecommendation({super.key, required this.hotelModel});

  final HotelModel hotelModel;
  
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) => const AvailableRoom(
             
            ),
          ),
        );
      },
      child: Container(
        width: 200,
        margin: const EdgeInsets.only(left: 16, top: 8, bottom: 8),
        padding: const EdgeInsets.all(12.0),
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(1),
              spreadRadius: 3,
              blurRadius: 5,
              offset: const Offset(0, 3),
            ),
          ],
          borderRadius: BorderRadius.circular(16.0),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: CachedNetworkImage(
                imageUrl: hotelModel.image,
                placeholder: (context, url) => const Center(
                  child: CircularProgressIndicator(),
                ),
                errorWidget: (context, url, error) => const Center(
                  child: Icon(Icons.error),
                ),
                fit: BoxFit.cover,
              ),
            ),
            const SizedBox(height: 4.0),
            CustomDiscountAndRationg(hotelModel: hotelModel),
            FittedBox(
              child: Text(
                hotelModel.name,
                style: AppThemes.light.textTheme.titleLarge!.copyWith(
                  fontSize: 16.0,
                ),
              ),
            ),
          const  FittedBox(child: CustomLocation(
             // hotelModel: hotelModel,
            )),
          ],
        ),
      ),
    );
  }
}
