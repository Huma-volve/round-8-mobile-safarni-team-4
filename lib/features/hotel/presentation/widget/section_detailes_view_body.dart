import 'package:flutter/material.dart';
import 'package:round_8_mobile_safarni_team4/core/theme/app_theme.dart';
import 'package:round_8_mobile_safarni_team4/features/hotel/presentation/widget/custom_discount_and_review.dart';

class SectionDetailesViewBody extends StatelessWidget {
  const SectionDetailesViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomDiscountAndReview(),
          Text("room_1", style: AppThemes.light.textTheme.titleLarge),
          SizedBox(height: 4),
          Text(
            "1012 oscean avanue, New Yourk ,USA",
            style: TextStyle(
              fontSize: 13,
              fontWeight: FontWeight.w400,
              color: Color(0xff6B7280),
            ),
          ),
          DefaultTabController(
            length: 3,
            child: Column(
              children: [
                TabBar(
                  tabs: [
                    Tab(text: "About"),
                    Tab(text: "Gallery"),
                    Tab(text: "Reviews"),
                  ],
                ),
                 Expanded(
                  child: TabBarView(
                    children: [Text("About"), Text("Gallery"), Text("Reviews")],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
