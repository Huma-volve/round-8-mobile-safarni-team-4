import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get_connect/http/src/utils/utils.dart';
import 'package:round_8_mobile_safarni_team4/core/colors/app_colors.dart';
import 'package:round_8_mobile_safarni_team4/core/theme/app_theme.dart';
import 'package:round_8_mobile_safarni_team4/features/search/presentation/view/widgets/section_num_of_result.dart';

import 'custom_search_result_item.dart' show CustomSearchItem;

class ResultSearchViewBody extends StatelessWidget {
  const ResultSearchViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        children: [
          SectionNumOfResult(),
         Expanded(
           child: ListView.builder(
             itemCount: 5,
             itemBuilder: (context, index) {
                return CustomSearchItem();
              }
            ),
         ),
        ],
      ),
    );
  }
}

