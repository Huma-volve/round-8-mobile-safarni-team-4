import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_rating/flutter_rating.dart';
import 'package:round_8_mobile_safarni_team4/features/hotel/presentation/widget/search_text_field.dart';

class ReviewSection extends StatefulWidget {
  const ReviewSection({super.key});

  @override
  State<ReviewSection> createState() => _ReviewSectionState();
}

class _ReviewSectionState extends State<ReviewSection> {
  double rating = 3.5;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Row(
          children: [
            Text(
              "Review",
              style: TextStyle(
                fontSize: 17,
                fontWeight: FontWeight.w500,
                color: Colors.black,
              ),
            ),
            Expanded(child: SizedBox()),
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.add, color: Color(0xff1E429F)),
            ),
            Text(
              "Add Review",
              style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.w500,
                color: Color(0xff1E429F),
              ),
            ),
          ],
        ),
        const SizedBox(height: 12),
        SearchTextField(),
        const SizedBox(height: 12),
        ListTile(
          leading: Image.asset(
            "assets/images/user_review.jpg",
            width: 50,
            height: 50,
          ),
          title: Text(
            "Mohamed Hussein",
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w500,
              color: Colors.black,
            ),
          ),
          trailing: Text(
            "11 months ago",
            style: TextStyle(
              fontSize: 13,
              fontWeight: FontWeight.w500,
              color: Color(0xff4B5563),
            ),
          ),
        ),
        const SizedBox(height: 12),

        StarRating(
          mainAxisAlignment: MainAxisAlignment.start,
          rating: rating,
          allowHalfRating: true,
          onRatingChanged: (rating) => setState(() => this.rating = rating),
        ),
        const SizedBox(height: 12),
        Text(
          "I really enjoyed my stay—the room was clean, the staff were friendly, and everything I needed was nearby.",
          style: TextStyle(
            fontSize: 15,
            fontWeight: FontWeight.w500,
            color: Colors.black,
          ),
        ),
      ],
    );
  }
}
