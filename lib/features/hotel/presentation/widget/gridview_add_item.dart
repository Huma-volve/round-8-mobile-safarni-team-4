import 'dart:io';
import 'package:flutter/material.dart';

class GridviewAddItem extends StatelessWidget {
  const GridviewAddItem({
    super.key,
    required this.images,
    required this.index,
  });

  final List<File> images;
  final int index;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(12),
      child: Image.file(
        images[index],
        fit: BoxFit.cover,
      ),
    );
  }
}
