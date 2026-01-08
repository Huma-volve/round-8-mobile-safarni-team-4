import 'package:flutter/material.dart';
import 'package:round_8_mobile_safarni_team4/core/helpers/size_config_extension.dart';
import 'package:round_8_mobile_safarni_team4/core/theme/app_text_stytles.dart';
import 'hotel_booking_item_badge_and_rate_sec.dart';
import 'hotel_booking_location_sec.dart';

class HotelBookingItem extends StatelessWidget {
  final String imagePath;
  final String name;
  final String location;
  final double rating;
  final String discount;

  const HotelBookingItem({
    super.key,
    this.imagePath = 'assets/images/hotel.png',
    this.name = 'GoldenValley',
    this.location = 'Downtown, NYC',
    this.rating = 4.5,
    this.discount = '10%Off',
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 2,
      color: Colors.white,
      shadowColor: Colors.grey.withValues(alpha: 0.4),
      child: Padding(
        padding: EdgeInsets.symmetric(
          vertical: context.h(8),
          horizontal: context.w(8),
        ),
        child: Row(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(8.0),
              child: Image.asset(
                imagePath,
                height: context.h(84),
                width: context.w(81),
                fit: BoxFit.cover,
              ),
            ),
            context.gapW(12),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  HotelBookingItemBadgeAndRateSec(
                    discount: discount,
                    rating: rating,
                  ),
                  context.gapH(8),
                  Text(
                    name,
                    style: AppTextStyles.font18Blackw600(
                      context,
                    ).copyWith(fontSize: context.sp(16)),
                  ),
                  context.gapH(8),
                  HotelBookingItemLocationSec(location: location),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
