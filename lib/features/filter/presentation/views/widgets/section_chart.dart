import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:round_8_mobile_safarni_team4/core/colors/app_colors.dart';
import 'package:round_8_mobile_safarni_team4/core/theme/app_theme.dart';
import 'package:syncfusion_flutter_charts/charts.dart';
// 1. أضف اسم مستعار لمكتبة السلايدرز
import 'package:syncfusion_flutter_sliders/sliders.dart' as sf_sliders;
import 'package:syncfusion_flutter_sliders/sliders.dart';

import '../../../data/model/chart_data.dart';

class SectionChart extends StatefulWidget {
  const SectionChart({super.key});

  @override
  State<SectionChart> createState() => _FilterViewBodyState();
}

class _FilterViewBodyState extends State<SectionChart> {
  SfRangeValues _values = const SfRangeValues(2000.0, 6000.0);

  // بيانات وهمية للرسم البياني (تعبر عن توفر الأماكن في كل سعر)

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
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

        // الجزء الخاص بالـ Range Selector مع الرسم البياني
        sf_sliders.SfRangeSelector(
          activeColor: const Color(0xff3F83F8),
          inactiveColor: Colors.transparent,

          min: 0.0,
          max: 8500.0,
          initialValues: _values,
          // تحديد الـ LabelPlacement من مكتبة السلايدر لحل المشكلة
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
          // هنا نقوم برسم الـ Histogram خلف الـ Slider
          child: SizedBox(
            height: 100,
            child: SfCartesianChart(
              margin: EdgeInsets.zero,
              primaryXAxis: const NumericAxis(
                isVisible: false,
                minimum: 0,
                maximum: 8500,
              ),
              primaryYAxis: const NumericAxis(isVisible: false),
              plotAreaBorderWidth: 0,
              series: <AreaSeries<DataModel, double>>[
                AreaSeries<DataModel, double>(
                  dataSource: chartData,
                  xValueMapper: (DataModel data, _) => data.x,
                  yValueMapper: (DataModel data, _) => data.y,
                  color: Colors.blue.withOpacity(0.3), // لون الرسم البياني
                  animationDuration: 0,
                ),
              ],
            ),
          ),
        ),
        const SizedBox(height: 20),

        // عرض قيم الـ Min و Max تحت الـ Slider
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Min",
                  style: AppThemes.light.textTheme.titleMedium!.copyWith(
                    color: AppColors.black[80],
                    fontWeight: FontWeight.w600,
                    fontSize: 12.sp,
                  ),
                ),
                Text(
                  "\$${_values.start.toInt()}",
                  style: AppThemes.light.textTheme.titleMedium!.copyWith(
                    color: AppColors.black[60],
                    fontSize: 12.sp,
                  ),
                ),
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(
                  "Max",
                  style: AppThemes.light.textTheme.titleMedium!.copyWith(
                    color: AppColors.black[60],
                    fontSize: 12.sp,
                  ),
                ),
                Text(
                  "\$${_values.end.toInt()}",
                  style: AppThemes.light.textTheme.titleMedium!.copyWith(
                    color: AppColors.black[80],
                    fontWeight: FontWeight.w600,
                    fontSize: 12.sp,
                  ),
                ),
              ],
            ),
          ],
        ),
      ],
    );
  }
}
