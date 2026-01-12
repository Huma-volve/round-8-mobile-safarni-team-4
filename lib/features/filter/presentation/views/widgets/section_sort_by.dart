import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:round_8_mobile_safarni_team4/core/colors/app_colors.dart';
import 'package:round_8_mobile_safarni_team4/core/theme/app_theme.dart';

import '../../../data/model/sort_option.dart';

class SectionSortBy extends StatefulWidget {
  const SectionSortBy({
    super.key,
    required this.sortOptions,
    required this.title,
    this.isMultiSelection = true,
    this.sidTitle = '', // الإضافة هنا: القيمة الافتراضية متعدد
  });

  final List<BottonData> sortOptions;
  final String title;
  final String sidTitle;
  final bool isMultiSelection; // البراميتر الجديد

  @override
  State<SectionSortBy> createState() => _SectionSortByState();
}

class _SectionSortByState extends State<SectionSortBy> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        Row(
          children: [
            Text(
              widget.title,
              style: AppThemes.light.textTheme.titleLarge!.copyWith(
                fontSize: 16.sp,
                color: AppColors.mainColorLight[100],
              ),
            ),
            const SizedBox(width: 10),
            Text(
              widget.sidTitle,
              style: AppThemes.light.textTheme.titleLarge!.copyWith(
                fontSize: 14.sp,
                color: AppColors.black[50],
              ),
            ),
          ],
        ),
        const SizedBox(height: 15),
        Wrap(
          spacing: 8.0,
          runSpacing: 8.0,
          children:
              widget.sortOptions.map((option) {
                return ChoiceChip(
                  showCheckmark: false,
                  padding: const EdgeInsets.symmetric(
                    vertical: 14,
                    horizontal: 16,
                  ),
                  label: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      option.icon == ''
                          ? const Text('')
                          : SvgPicture.asset(
                            option.icon,
                            color:
                                option.isSelected
                                    ? AppColors.mainColorLight[60]
                                    : AppColors.black[70],
                          ),
                      const SizedBox(width: 5),
                      Text(option.label),
                    ],
                  ),
                  labelStyle: TextStyle(
                    fontFamily:
                        AppThemes.light.textTheme.titleLarge!.fontFamily,
                    color:
                        option.isSelected
                            ? AppColors.mainColorLight[60]
                            : AppColors.black[70],
                    fontSize: 12.sp,
                  ),
                  selected: option.isSelected,
                  selectedColor: const Color(0xffEBF5FF),
                  backgroundColor: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(38),
                    side: BorderSide(
                      color:
                          option.isSelected
                              ? Colors.transparent
                              : const Color(0xffEBF5FF),
                    ),
                  ),
                  onSelected: (bool selected) {
                    setState(() {
                      if (widget.isMultiSelection) {
                        // لو مسموح اختيار كذا واحد: بنغير حالة العنصر اللي اتداس عليه بس
                        option.isSelected = selected;
                      } else {
                        // لو اختيار واحد بس:
                        if (selected) {
                          // 1. بنخلي كل الاختيارات false
                          for (var item in widget.sortOptions) {
                            item.isSelected = false;
                          }
                          // 2. بنخلي اللي دوسنا عليه هو اللي true
                          option.isSelected = true;
                        } else {
                          // لو دوست على المختار بالفعل وعايز تلغيه (اختياري)
                          option.isSelected = false;
                        }
                      }
                    });
                  },
                );
              }).toList(),
        ),
      ],
    );
  }
}
