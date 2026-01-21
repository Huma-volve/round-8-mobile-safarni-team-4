import 'package:flutter/material.dart';
import 'package:round_8_mobile_safarni_team4/core/theme/app_theme.dart';
import 'package:round_8_mobile_safarni_team4/features/hotel/data/model/hotel_available_rooms/rooms_model.dart';
import 'package:round_8_mobile_safarni_team4/features/hotel/presentation/widget/custom_discount_and_review.dart';
import 'package:round_8_mobile_safarni_team4/features/hotel/presentation/widget/custom_tab_section.dart';

class SectionDetailesViewBody extends StatelessWidget {
  const SectionDetailesViewBody({super.key , required this.room});

     final RoomItemModel room;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Stack(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const CustomDiscountAndReview(),
              Text(room.name, style: AppThemes.light.textTheme.titleLarge),
              const SizedBox(height: 4),
              const Text(
                "1012 oscean avanue, New Yourk ,USA",
                style: TextStyle(
                  fontSize: 13,
                  fontWeight: FontWeight.w400,
                  color: Color(0xff6B7280),
                ),
              ),
              const CustomTabSection(),

            ],
          ),
        ],
      ),
    );
  }
}
