import 'package:flutter/material.dart';
import 'package:flutter_rating/flutter_rating.dart';
import 'package:round_8_mobile_safarni_team4/core/theme/app_theme.dart';
import 'package:round_8_mobile_safarni_team4/core/widgets/custom_button.dart';
import 'package:round_8_mobile_safarni_team4/features/hotel/presentation/widget/custom_arraw_back.dart';
import 'package:round_8_mobile_safarni_team4/features/hotel/presentation/widget/custom_discount_and_review.dart';

class ReviewScreen extends StatelessWidget {
  const ReviewScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      //    backgroundColor: Colors.red,
      body: ReviewScreenBody(),
    );
  }
}

class ReviewScreenBody extends StatefulWidget {
  const ReviewScreenBody({super.key});

  @override
  State<ReviewScreenBody> createState() => _ReviewScreenBodyState();
}

class _ReviewScreenBodyState extends State<ReviewScreenBody> {
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
            child: _ReviewBottomSheet(
              rating: rating,
              onRatingChanged: (value) {
                setState(() => rating = value);
              },
            ),
          ),
        ],
      ),
    );
  }
}

class _ReviewBottomSheet extends StatelessWidget {
  final double rating;
  final ValueChanged<double> onRatingChanged;

  const _ReviewBottomSheet({
    super.key, // Added key
    required this.rating,
    required this.onRatingChanged,
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
          const _SheetHandle(),
          const SizedBox(height: 20),

          // This should contain the "10% Off" and "4.5 (356 reviews)"
          const CustomDiscountAndReview(),

          const SizedBox(height: 16),
          // Wrap the rest in Expanded + ScrollView if content is long
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  _RoomInfo(),
                  SizedBox(height: 16),
                  Divider(),
                  _RatingSection(),
                  SizedBox(height: 24),
                  _ReviewInput(),
                  SizedBox(height: 50),
                  CustomButton(buttonName: "Submit", onPressed: () {}),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class _SheetHandle extends StatelessWidget {
  const _SheetHandle();

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: 40,
        height: 5,
        decoration: BoxDecoration(
          color: Colors.grey.shade300,
          borderRadius: BorderRadius.circular(10),
        ),
      ),
    );
  }
}

class _RoomInfo extends StatelessWidget {
  const _RoomInfo();

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text("room_1", style: AppThemes.light.textTheme.titleLarge),
        const SizedBox(height: 4),
        const Text(
          "1012 Ocean Avenue, New York, USA",
          style: TextStyle(fontSize: 13, color: Color(0xff6B7280)),
        ),
      ],
    );
  }
}

class _RatingSection extends StatelessWidget {
  const _RatingSection();

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Your Overall Rating Of This Product",
          style: AppThemes.light.textTheme.titleLarge!.copyWith(
            fontSize: 14,
            color: Color(0xff6B7280),
          ),
        ),
        const SizedBox(height: 8),
        StarRating(rating: 4, allowHalfRating: true, onRatingChanged: (_) {}),
      ],
    );
  }
}

class _ReviewInput extends StatelessWidget {
  const _ReviewInput();

  @override
  Widget build(BuildContext context) {
    return TextField(
      maxLines: 5,
      decoration: InputDecoration(
        hintText: "Enter Review",
        filled: true,
        fillColor: const Color(0xffF3F4F6),
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(12)),
      ),
    );
  }
}
