import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:round_8_mobile_safarni_team4/core/colors/app_colors.dart';
import 'package:round_8_mobile_safarni_team4/core/theme/app_theme.dart';

class LocationSearchWidget extends StatefulWidget {
  const LocationSearchWidget({super.key});

  @override
  _LocationSearchWidgetState createState() => _LocationSearchWidgetState();
}

class _LocationSearchWidgetState extends State<LocationSearchWidget> {
  // الكنترولر عشان نمسح الكلام بعد ما ندوس Enter
  final TextEditingController _controller = TextEditingController();

  // القائمة اللي هنخزن فيها المدن المضافة
  List<String> selectedLocations = [];

  void _addLocation(String value) {
    if (value.trim().isNotEmpty) {
      setState(() {
        selectedLocations.add(value.trim());
        _controller.clear(); // مسح الخانة بعد الإضافة
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(bottom: 14, top: 14),
          child: Row(
            children: [
              Text(
                "Location",
                style: AppThemes.light.textTheme.titleMedium!.copyWith(
                  fontSize: 16.sp,
                  color: AppColors.mainColorLight[100]
                )
              ),
              const Spacer(),
              const Icon(Icons.map_outlined, color: Colors.blue)
            ],
          ),
        ),
        const SizedBox(height: 10),

        // خانة البحث
        TextField(
          controller: _controller,
          decoration: InputDecoration(
            hintText: "Search ...",
            prefixIcon: const Icon(Icons.search),
            // suffixIcon: Icon(Icons.map_outlined, color: Colors.blue),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(15),
              borderSide: BorderSide(color: Colors.grey.shade300),
            ),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(15),
              borderSide: BorderSide(color: Colors.grey.shade300),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(15),
              borderSide: const BorderSide(color: Color(0xff3F83F8)),
            ),
          ),
          // دي أهم نقطة: لما يدوس Enter على الكيبورد
          onSubmitted: (value) => _addLocation(value),
        ),

        const SizedBox(height: 15),

        // عرض المدن المضافة
        Wrap(
          spacing: 8.0,
          runSpacing: 4.0,
          children: selectedLocations.map((location) {
            return InputChip(


              label: Text(location),
              deleteIcon: const Icon(Icons.close, size: 14),
              onDeleted: () {
                setState(() {
                  selectedLocations.remove(location);
                });
              },
              backgroundColor: Colors.white,
              shape: const StadiumBorder(side: BorderSide(color: Color(0xffEBF5FF))),
            );
          }).toList(),
        ),
      ],
    );
  }
}