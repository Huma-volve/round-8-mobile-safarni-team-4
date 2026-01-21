import 'dart:io';
import 'package:flutter/material.dart';

class GridviewAddItem extends StatelessWidget {
  const GridviewAddItem({
    super.key,
    required this.images,
    required this.onRemove,
    required this.showDelete,
    required this.onLongPress,
    required this.onTap,
  });

  final File images;
  final VoidCallback onRemove;
  final bool showDelete;
  final VoidCallback onLongPress;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      behavior: HitTestBehavior.opaque, // 🔥 IMPORTANT
      onTap: onTap,
      onLongPress: onLongPress,
      child: Stack(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(12),
            child: Image.file(
              images,
              fit: BoxFit.cover,
              width: double.infinity,
              height: double.infinity,
            ),
          ),

          if (showDelete)
            Positioned(
              top: 6,
              right: 6,
              child: GestureDetector(
                onTap: () {
                  // prevent clearing selection when clicking close
                  onRemove();
                },
                child: const CircleAvatar(
                  radius: 14,
                  backgroundColor: Colors.red,
                  child: Icon(Icons.close, color: Colors.white, size: 16),
                ),
              ),
            ),
        ],
      ),
    );
  }
}
