import 'package:flutter/material.dart';
import 'package:round_8_mobile_safarni_team4/core/helpers/theme_extension.dart';

import '../../../../../core/routing/app_routes.dart';

class SectionSearchBar extends StatelessWidget {
  const SectionSearchBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: SizedBox(
            height: 44, // الطول المطلوب
            child: TextFormField(
              readOnly: true, // يمنع الكتابة
              onTap: () {
                // الكود اللي بيودي لصفحة تانية
                Navigator.pushNamed(context, AppRoutes.SearchView);
                print("Navigate to Search Page");
                // Navigator.push(context, MaterialPageRoute(builder: (context) => SearchPage()));
              },
              decoration: InputDecoration(
                hintText: 'Search ...',
                hintStyle: TextStyle(color: Colors.grey[400], fontSize: 14),
                prefixIcon: const Icon(
                  Icons.search,
                  color: Colors.grey,
                  size: 20,
                ),
                filled: true,
                fillColor: Colors.white,
                // إزالة الشادو والحدود الخارجية ليكون بسيط
                contentPadding: const EdgeInsets.symmetric(
                  vertical: 0,
                ), // عشان يظبط الكلام في النص مع الطول الصغير
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                  borderSide: BorderSide(color: Colors.grey.withOpacity(0.3)),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                  borderSide: BorderSide(color: Colors.grey.withOpacity(0.3)),
                ),
              ),
            ),
          ),
        ),
        const SizedBox(width: 12),

        // زرار الفلتر بنفس الطول
        Container(
          height: 44,
          width: 44,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            border: Border.all(color: Colors.grey.withOpacity(0.3)),
          ),
          child: IconButton(
            padding: EdgeInsets.zero,
            icon: Icon(Icons.tune, color: Colors.grey[600], size: 20),
            onPressed: () {
              context.pushNamed(AppRoutes.FilterView);
              print("Filter clicked");
            },
          ),
        ),
      ],
    );
  }
}
