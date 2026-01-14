import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:round_8_mobile_safarni_team4/core/helpers/theme_extension.dart';
import 'package:round_8_mobile_safarni_team4/core/routing/app_routes.dart';

import '../../../../search/data/model_country/country.dart';
import '../../managers/home_cubit/home_cubit.dart';
import 'custom_tours_item.dart';

class SearchTour extends StatefulWidget {
  const SearchTour({super.key});

  @override
  State<SearchTour> createState() => _SearchViewState();
}

class _SearchViewState extends State<SearchTour> {
  // القائمة التي سيتم عرضها (تبدأ بكل البيانات)
  List<CountryModel> displayedCountries = List.from(allCountries);

  void updateSearch(String query) {
    setState(() {
      if (query.isEmpty) {
        displayedCountries = List.from(allCountries);
      } else {
        displayedCountries =
            allCountries
                .where(
                  (country) =>
                      country.name.toLowerCase().contains(query.toLowerCase()),
                )
                .toList();
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(16.w),
      child: Column(
        children: [
          // شكل الـ Search Bar
          TextField(
            style: const TextStyle(fontSize: 20),
            onChanged: (value) => updateSearch(value),
            decoration: InputDecoration(
              hintText: "Search cities...",
              prefixIcon: const Icon(Icons.search, color: Colors.blue),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(20),
                borderSide: const BorderSide(color: Colors.blue),
              ),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(20),
                borderSide: const BorderSide(color: Color(0xff3F83F8)),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(20),
                borderSide: const BorderSide(width: 2, color: Color(0xff3F83F8)),
              ),
            ),
          ),
          SizedBox(height: 20.h),
          // القائمة
          Expanded(
            child: BlocBuilder<HomeCubit, HomeState>(
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
          ),
        ],
      ),
    );
  }
}
