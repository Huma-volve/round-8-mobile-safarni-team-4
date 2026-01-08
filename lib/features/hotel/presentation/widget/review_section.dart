
import 'package:flutter/material.dart';
import 'package:flutter_rating/flutter_rating.dart';
import 'package:round_8_mobile_safarni_team4/features/hotel/presentation/view/review_screen.dart';
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
      children: [
        const ReviewHeader(),
        const SizedBox(height: 12),
        const SearchTextField(),
        const SizedBox(height: 16),
        const ReviewUserTile(),
        const SizedBox(height: 12),
        ReviewRating(
          rating: rating,
          onChanged: (value) => setState(() => rating = value),
        ),
        const SizedBox(height: 12),
        const ReviewComment(),
      ],
    );
  }
}
class ReviewHeader extends StatelessWidget {
  const ReviewHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children:  [
        Text(
          "Review",
          style: TextStyle(
            fontSize: 17,
            fontWeight: FontWeight.w500,
          ),
        ),
        Spacer(),
        Icon(Icons.add, color: Color(0xff1E429F)),
        SizedBox(width: 4),
        TextButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => ReviewScreen(),
              ),
            );
          },
      child: Text(
        "Add Review",
        style: TextStyle(
          fontSize: 15,
          fontWeight: FontWeight.w500,
          color: Color(0xff1E429F),
        ),
      )
        ),
      ],
    );
  }
}
class ReviewUserTile extends StatelessWidget {
  const ReviewUserTile({super.key});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: EdgeInsets.zero,
      leading: CircleAvatar(
        radius: 25,
        backgroundImage: AssetImage("assets/images/user_review.jpg"),
      ),
      title: const Text(
        "Mohamed Hussein",
        style: TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.w500,
        ),
      ),
      trailing: const Text(
        "11 months ago",
        style: TextStyle(
          fontSize: 13,
          color: Color(0xff4B5563),
        ),
      ),
    );
  }
}
class ReviewRating extends StatelessWidget {
  final double rating;
  final ValueChanged<double> onChanged;

  const ReviewRating({
    super.key,
    required this.rating,
    required this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return StarRating(
      rating: rating,
      allowHalfRating: true,
      mainAxisAlignment: MainAxisAlignment.start,
      onRatingChanged: onChanged,
    );
  }
}
class ReviewComment extends StatelessWidget {
  const ReviewComment({super.key});

  @override
  Widget build(BuildContext context) {
    return const Text(
      "I really enjoyed my stay—the room was clean, the staff were friendly, and everything I needed was nearby.",
      style: TextStyle(
        fontSize: 15,
        fontWeight: FontWeight.w500,
      ),
    );
  }
}
