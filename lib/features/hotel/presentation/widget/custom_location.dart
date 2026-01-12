import 'package:flutter/material.dart';
import 'package:round_8_mobile_safarni_team4/features/hotel/data/model/get_all_hotels/hotel_model.dart';

class CustomLocation extends StatelessWidget {
  const CustomLocation({
    super.key,
    this.hotelModel,
  });
  final HotelModel? hotelModel;

  @override
  Widget build(BuildContext context) {
    return Row(
          children: [
            Icon(Icons.location_on_outlined, color: Colors.grey[600], size: 24.0),
            const SizedBox(width: 4.0),
            Text(hotelModel?.location ?? "Downtown, NYC", style: TextStyle(color: Colors.grey[600])),
          ],
        );
  }
}
