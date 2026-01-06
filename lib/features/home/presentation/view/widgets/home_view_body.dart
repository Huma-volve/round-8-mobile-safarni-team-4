import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:round_8_mobile_safarni_team4/features/home/presentation/view/widgets/section_search_bar.dart';
import 'package:round_8_mobile_safarni_team4/features/home/presentation/view/widgets/section_welcome.dart';

import '../../../data/model/model_category.dart';
import 'custom_category_itme.dart';
import 'custom_recommended_item.dart';
import 'custom_side_title.dart';
import 'custom_tours_item.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: ListView(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [

              SectionWelcome(),
              SizedBox(height: 24,),
              SectionSearchBar(),
              SizedBox(height: 32,),
            Center(
              child: Image.asset('assets/images/travel.png',
                fit: BoxFit.fill,
                // width: MediaQuery.of(context).size.width,
              ),
            ),


              customSideTitile(
                title: "Category",
                viewAll: false,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween, // لتوزيع الـ 4 خانات
                children: categories.map((item) => CategoryItem(category: item)).toList(),
              ),
              customSideTitile(
                title: "Recommendation",
                viewAll: true,
                onTap:(){},

              ),

              SizedBox(

                height: 300.h,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 4,
                    padding: EdgeInsets.symmetric(horizontal: 16.w,
                    vertical: 16.h
                    ),
                  itemBuilder: (context,index) {
                   return customRecomendeItem();
                  }
                ),
              ),
              customSideTitile(
                title: "Available Tours",
                viewAll: true,
                onTap:(){},

              ),
              ListView.builder(
                shrinkWrap: true, // مهم جداً: بيخلي الليستة تاخد حجم العناصر فقط
                physics: const NeverScrollableScrollPhysics(), // بيخلي السكرول تابع للصفحة الكبيرة
                itemCount: 5, // عدد التورز اللي عندك
                padding: EdgeInsets.zero, // عشان ميحصلش مسافات إضافية مش مرغوبة
                itemBuilder: (context, index) {
                  return Padding(
                    padding: EdgeInsets.only(bottom: 16.h), // مسافة بين كل تور والتانية
                    child: const cutomToursItem(),
                  );
                },
              ),
              SizedBox(height: 40,),
            ],
          ),
        ],
      ),
    );
  }
}


