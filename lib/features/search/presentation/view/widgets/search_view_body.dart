import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:round_8_mobile_safarni_team4/core/colors/app_colors.dart';

import '../../../data/model_country/country.dart';
import 'custom_country_search_item.dart';

class SearchViewBody extends StatefulWidget {
  const SearchViewBody({super.key});

  @override
  State<SearchViewBody> createState() => _SearchViewState();
}

class _SearchViewState extends State<SearchViewBody> {
  // القائمة التي سيتم عرضها (تبدأ بكل البيانات)
  List<CountryModel> displayedCountries = List.from(allCountries);

  void updateSearch(String query) {
    setState(() {
      if (query.isEmpty) {
        displayedCountries = List.from(allCountries);
      } else {
        displayedCountries = allCountries
            .where((country) =>
            country.name.toLowerCase().contains(query.toLowerCase()))
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
              style: TextStyle(
                fontSize: 20
              ),
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
                  borderSide: BorderSide(color:Color(0xff3F83F8)),
                ),
                  focusedBorder: OutlineInputBorder(

                  borderRadius: BorderRadius.circular(20),
                  borderSide: BorderSide(
                      width: 2,
                      color:Color(0xff3F83F8)),
                ),

              ),
            ),
            SizedBox(height: 20.h),
            // القائمة
            Expanded(
              child: ListView.builder(
                itemCount: displayedCountries.length,
                itemBuilder: (context, index) {
                  return CountrySearchItem(country: displayedCountries[index]);
                },
              ),
            ),
          ],
        ),
   );
  }
}