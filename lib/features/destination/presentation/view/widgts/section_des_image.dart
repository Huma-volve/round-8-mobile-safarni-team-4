import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SectionDesImage extends StatefulWidget {
  const SectionDesImage({super.key, required this.image});
final String image;
  @override
  State<SectionDesImage> createState() => _SectionDesImageState();
}

class _SectionDesImageState extends State<SectionDesImage> {
  bool isFavorite = false;
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: 293.h,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16)
          ),
          child: CachedNetworkImage(
            imageUrl: widget.image,
            fit: BoxFit.cover,
            placeholder: (context, url) => Container(color: Colors.grey[200]), // مؤشر تحميل
            errorWidget: (context, url, error) => const Icon(Icons.error),
          ),
        ),
        Positioned(
          top: 50,
          left: 16,
          child: CircleAvatar(
            backgroundColor: Colors.white,
            child: IconButton(
              icon: const Icon(Icons.arrow_back_ios_new, size: 18, color: Colors.black),
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
