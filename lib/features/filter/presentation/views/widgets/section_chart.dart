import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:round_8_mobile_safarni_team4/core/colors/app_colors.dart';
import 'package:round_8_mobile_safarni_team4/core/theme/app_theme.dart';

// استيراد الشارت بشكل طبيعي
import 'package:syncfusion_flutter_charts/charts.dart';

// استيراد السلايدر باسم مستعار فقط لمنع التضارب
import 'package:syncfusion_flutter_sliders/sliders.dart' as sf_sliders;

import '../../../data/model/chart_data.dart';
import '../../../data/model/chart_data.dart';

class SectionChart extends StatefulWidget {
  const SectionChart({super.key});

  @override
  State<SectionChart> createState() => _SectionChartState();
}

class _SectionChartState extends State<SectionChart> {
  // استخدام الاسم المستعار للقيم
  sf_sliders.SfRangeValues _values = const sf_sliders.SfRangeValues(2000.0, 6000.0);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Budget Range",
          style: AppThemes.light.textTheme.titleMedium!.copyWith(
            color: AppColors.mainColorLight[100],
            fontSize: 16.sp,
          ),
        ),
        const SizedBox(height: 20),

        sf_sliders.SfRangeSelector(
          activeColor: const Color(0xff3F83F8),
          inactiveColor: Colors.transparent,
          min: 0.0,
          max: 8500.0,
          initialValues: _values,
          labelPlacement: sf_sliders.LabelPlacement.betweenTicks,
          interval: 2000,
          showTicks: false,
          showLabels: false,
          dragMode: sf_sliders.SliderDragMode.both,
          onChanged: (sf_sliders.SfRangeValues values) {
            setState(() {
              _values = values;
            });
          },
          child: SizedBox(
            height: 100,
            // الـ Chart الآن سيتم التعرف عليه بشكل صحيح
            child: SfCartesianChart(
              margin: EdgeInsets.zero,
              primaryXAxis: const NumericAxis(
                isVisible: false,
                minimum: 0,
                maximum: 8500,
              ),
              primaryYAxis: const NumericAxis(isVisible: false),
              plotAreaBorderWidth: 0,
              series: <CartesianSeries<DataModel, double>>[
                AreaSeries<DataModel, double>(
                  dataSource: chartData,
                  xValueMapper: (DataModel data, _) => data.x,
                  yValueMapper: (DataModel data, _) => data.y,
                  color: Colors.blue.withOpacity(0.3),
                  animationDuration: 0,
                ),
              ],
            ),
          ),
        ),
        const SizedBox(height: 20),

        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            _buildPriceColumn("Min", _values.start.toInt()),
            _buildPriceColumn("Max", _values.end.toInt(), isMax: true),
          ],
        ),
      ],
    );
  }

  Widget _buildPriceColumn(String label, int value, {bool isMax = false}) {
    return Column(
      crossAxisAlignment: isMax ? CrossAxisAlignment.end : CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: AppThemes.light.textTheme.titleMedium!.copyWith(
            color: AppColors.black[isMax ? 60 : 80],
            fontWeight: isMax ? FontWeight.normal : FontWeight.w600,
            fontSize: 12.sp,
          ),
        ),
        Text(
          "\$$value",
          style: AppThemes.light.textTheme.titleMedium!.copyWith(
            color: AppColors.black[isMax ? 80 : 60],
            fontWeight: isMax ? FontWeight.w600 : FontWeight.normal,
            fontSize: 12.sp,
          ),
        ),
      ],
    );
  }

}
