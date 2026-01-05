import 'package:flutter/material.dart';

class WelcomeImageSection extends StatelessWidget {
  const WelcomeImageSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 3,
      child: Image.asset('assets/images/welcome_image.png'),
    );
  }
}
