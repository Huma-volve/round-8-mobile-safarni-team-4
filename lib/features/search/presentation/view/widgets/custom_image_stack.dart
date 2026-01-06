import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../../../core/colors/app_colors.dart';

class ItemImageStack extends StatelessWidget {
  final bool isFavorite;
  final VoidCallback onFavoriteToggle;

  const ItemImageStack({
    super.key,
    required this.isFavorite,
    required this.onFavoriteToggle,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(8),
          child: Image.asset(
            'assets/images/paris city.jpg',
            height: 223.h,
            width: MediaQuery.of(context).size.width,
            fit: BoxFit.cover,
          ),
        ),
        Positioned(
          right: 16.w,
          top: 16.h,
          child: CircleAvatar(
            backgroundColor: Colors.white,
            radius: 20,
            child: InkWell(
              onTap: onFavoriteToggle,
              child: Icon(
                isFavorite ? Icons.favorite : Icons.favorite_outline,
                color: isFavorite ? Colors.red : AppColors.gray,
              ),
            ),
          ),
        )
      ],
    );
  }
}