import 'package:flutter/material.dart';
import 'package:round_8_mobile_safarni_team4/features/hotel/presentation/widget/review_and_checkin_widget/check_in_item.dart';

class ListViewCheckInItem extends StatefulWidget {
  const ListViewCheckInItem({super.key});

  @override
  State<ListViewCheckInItem> createState() => _ListViewCheckInItemState();
}

class _ListViewCheckInItemState extends State<ListViewCheckInItem> {
  int selectedCheckInIndex = 0;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 4,
        itemBuilder: (context, index) {
          return InkWell(
            onTap: () {
              setState(() {
                selectedCheckInIndex = index;
              });
            },
            child: CheckInItem(
              day: "Today",
              date: "4 Oct",
              isSelected: index == selectedCheckInIndex,
            ),
          );
        },
      ),
    );
  }
}
