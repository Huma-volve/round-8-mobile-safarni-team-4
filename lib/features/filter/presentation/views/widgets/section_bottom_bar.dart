import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:round_8_mobile_safarni_team4/core/theme/app_theme.dart';

class SectionBottomBar extends StatelessWidget {
  const SectionBottomBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          color: Colors.white,
          // إضافة ظل خفيف عشان يفصل الجزء الثابت عن السكرول
          boxShadow: [
            BoxShadow(
              color: Colors.black12,
              blurRadius: 10,
              spreadRadius: 1,
            ),
          ],
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            // كلمة Clear All
            TextButton(
              onPressed: () {
                // تنفيذ مسح كل الفلترز هنا
              },
              child: Text(
                "Clear All",
                style: AppThemes.light.textTheme.titleLarge!.copyWith(
                  fontSize: 16.sp,
                  fontWeight: FontWeight.w600,
                  color: Color(0xff1E429F)
                )
              ),
            ),

            // زرار عدد الـ Tours
            ElevatedButton(
              onPressed: () {
                // تنفيذ الـ Search
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Color(0xFF1E429F), // لون الزرار الأزرق
                padding: EdgeInsets.symmetric(horizontal: 24, vertical: 12),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16),
                ),
              ),
              child: Text(
                "56 Tours Found",
                 style: AppThemes.light.textTheme.titleLarge!.copyWith(
                fontSize: 16.sp,
                  fontWeight: FontWeight.w600,
                 color: Colors.white)
              ),
            ),
          ],
        )
    );
  }
}
