import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SectionDesImage extends StatefulWidget {
  const SectionDesImage({super.key});

  @override
  State<SectionDesImage> createState() => _SectionDesImageState();
}

class _SectionDesImageState extends State<SectionDesImage> {
  bool isFavorite = false;
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.asset(
          'assets/images/f740ef6cd867e287f165cac7175de41c2d666258.jpg', // صورة برج إيفل افتراضية
          width: double.infinity,
          height: 293.h,
          fit: BoxFit.cover,
        ),
        Positioned(
          top: 50,
          left: 16,
          child: CircleAvatar(
            backgroundColor: Colors.white,
            child: IconButton(
              icon: Icon(Icons.arrow_back_ios_new, size: 18, color: Colors.black),
              onPressed: () => Navigator.pop(context),
            ),
          ),
        ),
        Positioned(
          top: 50,
          right: 16,
          child: CircleAvatar(
            backgroundColor: Colors.white,
            child: IconButton(
              icon: Icon(
                isFavorite ? Icons.favorite : Icons.favorite_border,
                color: isFavorite ? Colors.red : Colors.grey,
              ),
              onPressed: () {
                setState(() => isFavorite = !isFavorite);
              },
            ),
          ),
        ),
      ],
    );
  }
}
