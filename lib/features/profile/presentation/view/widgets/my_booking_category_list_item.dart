import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:round_8_mobile_safarni_team4/core/colors/app_colors.dart';
import 'package:round_8_mobile_safarni_team4/core/helpers/size_config_extension.dart';
import 'package:round_8_mobile_safarni_team4/core/helpers/theme_extension.dart';
import 'package:round_8_mobile_safarni_team4/features/profile/data/models/my_booking_list_model.dart';

class MyBookingCategoryListItem extends StatelessWidget {
  const MyBookingCategoryListItem({
    super.key,
    required this.index,
    required this.onTap,
    this.isSelected = false,
  });
  final int index;
  final VoidCallback onTap;
  final bool isSelected;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.symmetric(
          horizontal: context.w(16),
          vertical: context.h(8),
        ),
        decoration: BoxDecoration(
          border: Border.all(color: AppColors.black[10]!),
          borderRadius: BorderRadius.circular(20),
        ),
        child: Row(
          children: [
            SvgPicture.asset(
              MyBookingListModel.myBookingCategoryList[index].categoryImage,
              width: context.w(18),
              height: context.h(18),
              color:
                  isSelected ? AppColors.mainColorLight : AppColors.black[70]!,
            ),
            context.gapW(4),
            Text(
              MyBookingListModel.myBookingCategoryList[index].categoryName,
              style: context.textTheme.displayMedium?.copyWith(
                fontSize: context.sp(17),
                color:
                    isSelected
                        ? AppColors.mainColorLight
                        : AppColors.black[70]!,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
