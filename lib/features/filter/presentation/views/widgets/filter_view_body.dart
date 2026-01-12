import 'package:flutter/cupertino.dart';
import 'package:round_8_mobile_safarni_team4/features/filter/presentation/views/widgets/section_chart.dart';
import 'package:round_8_mobile_safarni_team4/features/filter/presentation/views/widgets/section_search_location.dart';
import 'package:round_8_mobile_safarni_team4/features/filter/presentation/views/widgets/section_sort_by.dart';

import '../../../data/model/sort_option.dart';
import 'cutom_line.dart';

class FilterViewBody extends StatelessWidget {
  const FilterViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SectionSortBy(
              sortOptions: sortOptions,
              title: "Sort By",
              isMultiSelection: false,
            ),
            const customLine(),
            const SectionChart(),
            const customLine(),
            const SizedBox(height: 20),
            SectionSortBy(
              sortOptions: AdevStyle,
              title: 'Adventure Style',
              sidTitle: 'Multi Select',
            ),
            const customLine(),
            const LocationSearchWidget(),
            const customLine(),
            SectionSortBy(
              sortOptions: Rating,
              title: 'Rating',
              sidTitle: 'Multi Select',
            ),
          ],
        ),
      ),
    );
  }
}
