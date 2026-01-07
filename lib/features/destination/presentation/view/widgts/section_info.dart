import 'package:flutter/material.dart';

class CustomInfoContainer extends StatelessWidget {
  final Widget child;

  const CustomInfoContainer({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return Container(
      // الـ Padding الداخلي المطلوب
      padding: const EdgeInsets.all(8.0),
      decoration: BoxDecoration(
        color: Colors.white, // خلفية بيضاء
        borderRadius: BorderRadius.circular(16), // Radius 16
        border: Border.all(
          color: Colors.grey.shade300, // بوردر رمادي فاتح
          width: 1.0,
        ),
      ),
      // بنستخدم الـ child عشان تحط جواه أي Text أو Row
      child: child,
    );
  }
}