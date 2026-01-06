import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../../core/colors/app_colors.dart';
import 'custom_image_stack.dart';
import 'item_detail_row.dart';
import 'item_price_row.dart';
import 'item_tile_rating.dart';

class CustomSearchItem extends StatefulWidget {
  const CustomSearchItem({super.key});

  @override
  State<CustomSearchItem> createState() => _CustomSearchItemState();
}

class _CustomSearchItemState extends State<CustomSearchItem> {
  bool isFavorite = false;

  @override
  Widget build(BuildContext context) {
    return Container(

      height: 333.h,
      margin: const EdgeInsets.only(bottom: 16),
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(16),
          boxShadow: [
            BoxShadow(
              color: AppColors.black.withOpacity(.08),
              spreadRadius: 2,
              blurRadius: 15,
            )
          ]),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ItemImageStack(
            isFavorite: isFavorite,
            onFavoriteToggle: () {
              setState(() {
                isFavorite = !isFavorite;
              });
            },
          ),
          const SizedBox(height: 8),
          const ItemTitleRating(),
          const Spacer(),
          const ItemDetailsRow(),
          const Spacer(),
          const ItemPriceRow(),
        ],
      ),
    );
  }
}