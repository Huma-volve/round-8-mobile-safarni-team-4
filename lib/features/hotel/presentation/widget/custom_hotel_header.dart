import 'package:flutter/material.dart';
import 'package:round_8_mobile_safarni_team4/features/hotel/presentation/widget/search_text_field.dart';

class CustomHotelHeader extends StatelessWidget {
  const CustomHotelHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 16.0),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.arrow_back_ios_new_rounded),
          ),
          const SizedBox(height: 8.0),
          const SearchTextField(),
          const SizedBox(height: 8.0),
         
        ],
      ),
    );
  }
}
