import 'package:flutter/material.dart';
import 'package:round_8_mobile_safarni_team4/features/hotel/presentation/widget/about_section.dart';
import 'package:round_8_mobile_safarni_team4/features/hotel/presentation/widget/gallery_section.dart';
import 'package:round_8_mobile_safarni_team4/features/hotel/presentation/widget/review_section.dart';

class CustomTabSection extends StatefulWidget {
  const CustomTabSection({super.key});

  @override
  State<CustomTabSection> createState() => _CustomTabSectionState();
}

class _CustomTabSectionState extends State<CustomTabSection> {
  int selectedIndex = 0;

  final List<String> tabs = ["About", "Gallery", "Review"];

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // Custom Tabs (Horizontal Scrollable)
        Row(
          children:
              tabs.asMap().entries.map((entry) {
                //
                int index = entry.key;
                String title = entry.value;

                return GestureDetector(
                  onTap: () {
                    setState(() {
                      selectedIndex = index;
                    });
                  },
                  child: _decoraionItemSelected(index, title),
                );
              }).toList(),
        ),

        const SizedBox(height: 20),

        // Content based on selected tab
        IndexedStack(
          index: selectedIndex,
          children:  [
            AboutSection(
             // roomsData: ,
            ),
            // Gallery Tab 
           const GallerySection(),

            // Review Tab
            ReviewSection(),
          ],
        ),
      ],
    );
  }

  Container _decoraionItemSelected(int index, String title) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(
            color: selectedIndex == index ? Colors.blue : Colors.transparent,
            width: 3,
          ),
        ),
      ),
      child: Text(
        title,
        style: TextStyle(
          color: selectedIndex == index ? Colors.blue : Colors.grey,
          fontWeight:
              selectedIndex == index ? FontWeight.bold : FontWeight.normal,
          fontSize: 16,
        ),
      ),
    );
  }
}
