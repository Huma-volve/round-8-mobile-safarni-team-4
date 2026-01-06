import 'package:flutter/material.dart';

class CustomImageItem extends StatelessWidget {
  const CustomImageItem({
    super.key,
    this.showOverlay = false,
    this.overlayText = '',
  });

  final bool showOverlay;
  final String overlayText;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 95,
      height: 100,
      padding: const EdgeInsets.all(4),
      decoration: BoxDecoration(
        color: Colors.white, // 👈 background لكل الصور
        //  borderRadius: BorderRadius.circular(14),
        // boxShadow: [
        //   BoxShadow(
        //     color: Colors.black.withOpacity(0.1),
        //     blurRadius: 6,
        //     offset: const Offset(0, 3),
        //   ),
        // ],
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(12),
        child: Stack(
          children: [
            Image.asset(
              'assets/images/room.png',
              width: double.infinity,
              height: double.infinity,
              fit: BoxFit.cover,
            ),

            if (showOverlay)
              Container(
                color: Colors.black.withOpacity(0.5),
                alignment: Alignment.center,
                child: Text(
                  overlayText,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
          ],
        ),
      ),
    );
  }
}
