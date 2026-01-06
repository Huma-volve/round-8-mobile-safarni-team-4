import 'package:flutter/material.dart';
import 'package:round_8_mobile_safarni_team4/core/theme/app_theme.dart';

class CustomDiscountAndReview extends StatelessWidget {
  const CustomDiscountAndReview({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 4.0),
          decoration: BoxDecoration(
            color: Color(0xffEBF5FF),
            borderRadius: BorderRadius.circular(4.0),
          ),
          child: Text(
            "10%Off",
            style: AppThemes.light.textTheme.labelMedium!.copyWith(
              color: Color(0xff007BFF),
            ),
          ),
        ),
        Expanded(child: SizedBox()),
        IconButton(
          padding: EdgeInsets.zero,
          onPressed: () {},
          icon: Icon(Icons.star, color: Colors.amber),
        ),
        Text(
          "4.5(356 reviews)",

          style: AppThemes.light.textTheme.displayLarge!.copyWith(
            fontSize: 12.0,
          ),
        ),
      ],
    );
  }
}
