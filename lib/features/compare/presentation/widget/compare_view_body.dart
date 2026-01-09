import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:round_8_mobile_safarni_team4/core/helpers/theme_extension.dart';
import 'package:round_8_mobile_safarni_team4/core/routing/app_routes.dart';
import 'package:round_8_mobile_safarni_team4/core/widgets/custom_button.dart';
import 'package:round_8_mobile_safarni_team4/features/compare/data/compar_model.dart';
import 'package:round_8_mobile_safarni_team4/features/compare/presentation/widget/compare_item.dart';
import 'package:round_8_mobile_safarni_team4/features/compare/presentation/widget/paris_cruise_card.dart';
import 'package:round_8_mobile_safarni_team4/features/hotel/presentation/widget/search_text_field.dart';

class CompareViewBody extends StatelessWidget {
  const CompareViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
          child: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(Icons.arrow_back_ios_new_outlined),
          ),
        ),
        SliverToBoxAdapter(child: SizedBox(height: 20.h)),
        const SliverToBoxAdapter(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.0),
            child: SearchTextField(),
          ),
        ),
        SliverToBoxAdapter(child: SizedBox(height: 20.h)),

        SliverList(
          delegate: SliverChildBuilderDelegate(
            (context, index) => CompareItem(comparModel: comparList[index]),
            childCount: comparList.length,
          ),
        ),
        SliverToBoxAdapter(child: SizedBox(height: 20.h)),

        SliverList(
          delegate: SliverChildBuilderDelegate(
            (context, index) => const Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 16.0,
                vertical: 8.0,
              ),
              child: ParisCruiseCard(),
            ),
            childCount: 2,
          ),
        ),
        SliverToBoxAdapter(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: CustomButton(
              onPressed: () {
                context.pushNamed(AppRoutes.paymentMethod);
              },
              buttonName: 'Compare',
              height: 50.h,
              width: 350.w,
            ),
          ),
        ),
        SliverToBoxAdapter(child: SizedBox(height: 100.h)),
      ],
    );
  }
}
