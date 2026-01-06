import 'package:flutter/material.dart';
import 'package:round_8_mobile_safarni_team4/features/hotel/presentation/widget/custom_arraw_back.dart';
import 'package:round_8_mobile_safarni_team4/features/hotel/presentation/widget/list_view_image_item.dart';

class CustomDetailesImage extends StatelessWidget {
  const CustomDetailesImage({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Column(
          children: [
            Image.asset(
              'assets/images/room_detailes.jpg',
              fit: BoxFit.cover,
              width: double.infinity,
              height: 350,
            ), // constraints: BoxConstraints(minWidth: 20, minHeight: 20),
          ],
        ),
        Positioned(top: 64, left: 16, child: CustomArrawBack()),
        Positioned(
          top: 220,
          left: 16,
          right: 16,
          child: SizedBox(height: 100, child: ListViewImageItem()),
        ),
      ],
    );
  }
}
