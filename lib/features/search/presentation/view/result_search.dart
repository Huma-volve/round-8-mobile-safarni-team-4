import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:round_8_mobile_safarni_team4/core/helpers/theme_extension.dart';
import 'package:round_8_mobile_safarni_team4/core/routing/app_routes.dart';
import 'package:round_8_mobile_safarni_team4/features/search/presentation/view/widgets/result_search_view_body.dart';

class ResultSearch extends StatelessWidget {
  const ResultSearch({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        actions: [
          InkWell(
            onTap: () {},
            child: SvgPicture.asset('assets/icons/searhc.svg', height: 24.h),
          ),
          const SizedBox(width: 23),
          InkWell(
            onTap: () {
              context.pushNamed(AppRoutes.FilterView);
            },
            child: SvgPicture.asset('assets/icons/filter.svg', height: 17.h),
          ),
          const SizedBox(width: 16),
        ],
      ),
      body: const ResultSearchViewBody(),
    );
  }
}
