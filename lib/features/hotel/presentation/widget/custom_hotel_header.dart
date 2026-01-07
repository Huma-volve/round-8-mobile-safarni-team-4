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
          SizedBox(height: 16.0),
          IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(Icons.arrow_back_ios_new_rounded),
          ),
          SizedBox(height: 8.0),
          SearchTextField(),
          SizedBox(height: 8.0),
         
        ],
      ),
    );
  }
}
