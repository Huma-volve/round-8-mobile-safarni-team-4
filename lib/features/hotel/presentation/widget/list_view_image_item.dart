import 'package:flutter/material.dart';
import 'package:round_8_mobile_safarni_team4/features/hotel/presentation/widget/custom_image_item.dart';

class ListViewImageItem extends StatelessWidget {
  const ListViewImageItem({super.key});

  final int totalImages = 8;
  final int visibleImages = 4;

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      scrollDirection: Axis.horizontal,
      itemCount: visibleImages,
      separatorBuilder: (_, __) => const SizedBox(width: 0),
      itemBuilder: (context, index) {
        final bool isLastItem = index == visibleImages - 1;
        final int remainingImages = totalImages - visibleImages;

        if (isLastItem && remainingImages > 0) {
          return CustomImageItem(
            showOverlay: true,
            overlayText: '+$remainingImages',
          );
        }

        return const CustomImageItem();
      },
    );
  }
}
