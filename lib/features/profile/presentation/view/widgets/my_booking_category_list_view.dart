import 'package:flutter/material.dart';
import 'package:round_8_mobile_safarni_team4/core/helpers/size_config_extension.dart';
import 'package:round_8_mobile_safarni_team4/features/profile/data/models/my_booking_list_model.dart';
import 'package:round_8_mobile_safarni_team4/features/profile/presentation/view/widgets/my_booking_category_list_item.dart';

class MyBookingCategoryListView extends StatefulWidget {
  const MyBookingCategoryListView({super.key, required this.callBack});
  final Function(int index) callBack;

  @override
  State<MyBookingCategoryListView> createState() =>
      _MyBookingCategoryListViewState();
}

class _MyBookingCategoryListViewState extends State<MyBookingCategoryListView> {
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: context.h(42),
      child: ListView.separated(
        padding: EdgeInsetsGeometry.only(left: context.w(16)),
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          final isSelected = currentIndex == index;
          return MyBookingCategoryListItem(
            isSelected: isSelected,
            index: index,
            onTap: () {
              widget.callBack(index);
              currentIndex = index;
            },
          );
        },
        separatorBuilder: (context, index) => context.gapW(8),
        itemCount: MyBookingListModel.myBookingCategoryList.length,
      ),
    );
  }
}
