import 'package:flutter/material.dart';
import 'package:round_8_mobile_safarni_team4/core/helpers/size_config_extension.dart';
import 'package:round_8_mobile_safarni_team4/features/profile/presentation/view/widgets/cars_booking_list_view.dart';
import 'package:round_8_mobile_safarni_team4/features/profile/presentation/view/widgets/flight_booking_list_view.dart';
import 'package:round_8_mobile_safarni_team4/features/profile/presentation/view/widgets/hotels_booking_list_view.dart';
import 'package:round_8_mobile_safarni_team4/features/profile/presentation/view/widgets/my_booking_category_list_view.dart';
import 'package:round_8_mobile_safarni_team4/features/profile/presentation/view/widgets/toures_booking_list_view.dart';

class MyBookingView extends StatefulWidget {
  const MyBookingView({super.key});

  @override
  State<MyBookingView> createState() => _MyBookingViewState();
}

class _MyBookingViewState extends State<MyBookingView> {
  List<Widget> pages = [
    const FlightBookingListView(),
    const CarsBookingListView(),
    const TouresBookingListView(),
    const HotelsBookingListView(),
  ];

  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios),
          onPressed: () => Navigator.of(context).pop(),
        ),
        title: const Text('My Booking'),
        centerTitle: true,
      ),
      body: Column(
        children: [
          context.gapH(24),
          MyBookingCategoryListView(
            callBack: (int index) {
              setState(() {
                selectedIndex = index;
              });
            },
          ),
          context.gapH(10),
          pages[selectedIndex],
        ],
      ),
    );
  }
}
