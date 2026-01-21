import 'dart:io';
import 'package:flutter/material.dart';

class GridviewAddItem extends StatelessWidget {
  const GridviewAddItem({super.key, required this.images, required this.index});

  final List<File> images;
  final int index;

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      ClipRRect(
      borderRadius: BorderRadius.circular(12),
      child: Image.file(
        images[index],
        fit: BoxFit.cover,
      ),
    ),
      const Positioned(
        top: 0,
        right: 0,
        child: Padding(
          padding: EdgeInsets.all(4.0),
          child: Icon(
            Icons.close,
            color: Colors.red,
          ),
        ),
      ),
    ]);
  }
}
