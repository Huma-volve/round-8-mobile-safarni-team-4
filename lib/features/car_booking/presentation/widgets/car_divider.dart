import 'package:flutter/material.dart';

class CarDivider extends StatelessWidget {
  const CarDivider({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.03,
      width: 1,
      color: Colors.grey.shade300,
    );
  }
}
