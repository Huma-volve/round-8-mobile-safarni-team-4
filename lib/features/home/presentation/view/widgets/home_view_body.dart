import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:round_8_mobile_safarni_team4/features/home/presentation/view/widgets/section_recommendation.dart';
import 'package:round_8_mobile_safarni_team4/features/home/presentation/view/widgets/section_search_bar.dart';
import 'package:round_8_mobile_safarni_team4/features/home/presentation/view/widgets/section_welcome.dart';

import '../../../data/model/model_category.dart';
import '../../managers/home_cubit/home_cubit.dart';
import 'custom_category_itme.dart';
import 'custom_recommended_item.dart';
import 'custom_side_title.dart';
import 'custom_tours_item.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: ListView(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [

              const SectionWelcome(),
              const SizedBox(height: 24,),
              const SectionSearchBar(),
              const SizedBox(height: 32,),
            Center(
              child: Image.asset('assets/images/travel.png',
                fit: BoxFit.fill,
                width: MediaQuery.of(context).size.width,
              ),
            ),


              const customSideTitile(
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

              // داخل HomeViewBody في الـ ListView
              SectionRecomendation(),
              customSideTitile(
                title: "Available Tours",
                viewAll: true,
                onTap:(){},

              ),
              BlocBuilder<HomeCubit, HomeState>(

                buildWhen: (previous, current) =>
                current is HomeToursLoading ||
                    current is HomeToursSuccess ||
                    current is HomeToursError,
                builder: (context, state) {
                  if (state is HomeToursSuccess) {
                    return ListView.builder(
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      itemCount: state.tours.length, // نستخدم طول القائمة القادمة من الـ API
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: EdgeInsets.only(bottom: 16.h),
                          child: cutomToursItem(
                            tour: state.tours[index], // نمرر البيانات للموديل
                          ),
                        );
                      },
                    );
                  } else if (state is HomeToursError) {
                    return Center(child: Text(state.message));
                  } else {
                    // حالة الـ Loading (يمكنك وضع Shimmer هنا لاحقاً)
                    return const Center(child: CircularProgressIndicator());
                  }
                },
              ),
              const SizedBox(height: 40,),

            ],
          ),
        ],
      ),
    );
  }
}


