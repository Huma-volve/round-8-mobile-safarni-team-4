import 'dart:io';
import 'package:flutter/material.dart';
import 'package:round_8_mobile_safarni_team4/features/hotel/presentation/widget/gridview_add_item.dart';

class GridViewAddItemListView extends StatelessWidget {
  const GridViewAddItemListView({super.key, required this.images});

  final List<File> images;

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: images.length,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
      ),
      itemBuilder: (context, index) {
        return GridviewAddItem(images: images, index: index);
      },
    );
  }
}
