import 'package:flutter/material.dart';
import 'package:round_8_mobile_safarni_team4/features/hotel/presentation/widget/custom_arraw_back.dart';
import 'package:round_8_mobile_safarni_team4/features/hotel/presentation/widget/review_bottom_sheet.dart';

class CheckInAndOutBody extends StatefulWidget {
  const CheckInAndOutBody({super.key});

  @override
  State<CheckInAndOutBody> createState() => _CheckInAndOutBodyState();
}
class _CheckInAndOutBodyState extends State<CheckInAndOutBody> {
  double rating = 4;

  @override
  Widget build(BuildContext context) {
    // Use layout builder or fixed height to ensure the stack fills the screen
    return SizedBox.expand(
      child: Stack(
        children: [
          /// 🔹 Background Image
          Image.asset(
            "assets/images/room_detailes.jpg",
            height: MediaQuery.of(context).size.height * 0.45,
            width: double.infinity,
            fit: BoxFit.cover,
          ),
          Positioned(top: 70, left: 20, child: CustomArrawBack()),

          /// 🔹 Bottom Sheet
          Positioned(
            top: MediaQuery.of(context).size.height * 0.30, // Adjust overlap
            left: 0,
            right: 0,
            bottom: 0, // This forces the container to stretch to the bottom
            child: ReviewBottomSheet(),
          ),
        ],
      ),
    );
  }
}