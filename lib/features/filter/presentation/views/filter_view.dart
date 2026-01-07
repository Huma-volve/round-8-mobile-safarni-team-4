import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:round_8_mobile_safarni_team4/features/filter/presentation/views/widgets/filter_view_body.dart';
import 'package:round_8_mobile_safarni_team4/features/filter/presentation/views/widgets/section_bottom_bar.dart';
import 'package:round_8_mobile_safarni_team4/features/filter/presentation/views/widgets/section_chart.dart';

class FilterView extends StatelessWidget {
  const FilterView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text('Filter'),
      ),
      body:FilterViewBody() ,

    bottomNavigationBar: SectionBottomBar());
  }
}

