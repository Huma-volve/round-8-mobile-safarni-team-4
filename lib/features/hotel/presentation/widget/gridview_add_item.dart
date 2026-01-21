import 'dart:io';
import 'package:flutter/material.dart';

class GridviewAddItem extends StatelessWidget {
  const GridviewAddItem({super.key, required this.images,required this.onRemove,required this.showDelete , required this.onLongPress,required this.onTap});

  final File images;
  
 final void Function()? onRemove;
  final bool showDelete;
  final void Function()? onLongPress;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      onLongPress: onLongPress,
      child: Stack(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(12),
            child: Image.file(images, fit: BoxFit.cover),
          ),
          if (showDelete)
            Positioned(
              top: 0,
              right: 0,
              child: GestureDetector(
                onTap: onRemove,
                child: const CircleAvatar(
                  backgroundColor: Colors.red,
                  child: Padding(
                    padding: EdgeInsets.all(4.0),
                    child: Icon(Icons.close, color: Colors.white),
                  ),
                ),
              ),
            ),
        ],
      ),
    );
  }
}
