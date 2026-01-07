import 'package:flutter/material.dart';
import 'package:round_8_mobile_safarni_team4/features/hotel/presentation/widget/custom_discount_and_review.dart';
import 'package:round_8_mobile_safarni_team4/features/hotel/presentation/widget/review_and_checkin_widget/__room_info.dart';
import 'package:round_8_mobile_safarni_team4/features/hotel/presentation/widget/review_and_checkin_widget/__sheet_handle.dart';
import 'package:round_8_mobile_safarni_team4/features/hotel/presentation/widget/review_and_checkin_widget/check_in_item.dart';

class ReviewBottomSheet extends StatelessWidget {
  const ReviewBottomSheet({
    super.key, // Added key
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      // Ensure the container expands to the bottom
      width: double.infinity,
      padding: const EdgeInsets.fromLTRB(20, 12, 20, 16),
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.vertical(
          top: Radius.circular(32), // Increased for smoother look
        ),
      ),
      child: Column(
        // Removed SingleChildScrollView here to prevent layout collapse
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SheetHandle(),
          const SizedBox(height: 20),

          const CustomDiscountAndReview(),

          const SizedBox(height: 16),
          // Wrap the rest in Expanded + ScrollView if content is long
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const RoomInfo(),
                  SizedBox(height: 16),
                  Divider(),
                  SizedBox(height: 16),
                  Center(
                    child: Text(
                      "Book Hotel",
                      style: TextStyle(
                        color: Color(0xff1E429F),
                        fontSize: 20,
                        fontWeight: FontWeight.w500,
                        fontFamily: "Pippons",
                      ),
                    ),
                  ),
                  SizedBox(height: 16),
                  Text(
                    "Check In",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                      fontFamily: "Pippons",
                    ),
                  ),
                  SizedBox(
                    height: 200,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: 10,
                      itemBuilder: (context, index) {
                        return CheckInItem(
                          day: "Today",
                          date: "4 Oct",
                          isSelected: index == 0,
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
