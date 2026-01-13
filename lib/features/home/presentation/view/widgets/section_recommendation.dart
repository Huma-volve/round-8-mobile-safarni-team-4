import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../managers/home_cubit/home_cubit.dart';
import 'custom_recommended_item.dart';

class SectionRecomendation extends StatelessWidget {
  const SectionRecomendation({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeCubit, HomeState>(
      buildWhen: (previous, current) =>
      current is HomeRecommendedLoading ||
          current is HomeRecommendedSuccess ||
          current is HomeRecommendedError,
      builder: (context, state) {
        if (state is HomeRecommendedSuccess) {
          return SizedBox(
            height: 300.h,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: state.tours.length,
              padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 16.h),
              itemBuilder: (context, index) {
                return customRecomendeItem(tour: state.tours[index]);
              },
            ),
          );
        } else if (state is HomeRecommendedError) {
          return Center(child: Text(state.message));
        } else {
          return const Center(child: CircularProgressIndicator());
        }
      },
    );
  }
}


