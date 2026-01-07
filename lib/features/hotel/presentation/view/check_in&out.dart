import 'package:flutter/material.dart';
import 'package:round_8_mobile_safarni_team4/features/hotel/presentation/widget/review_and_checkin_widget/check_in_and_out_body.dart';
import 'package:round_8_mobile_safarni_team4/features/hotel/presentation/widget/review_bottom_sheet.dart';

class CheckInAndOutScreen extends StatelessWidget {
  const CheckInAndOutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      //    backgroundColor: Colors.red,
      body: CheckInAndOutBody(),
    );
  }
}
