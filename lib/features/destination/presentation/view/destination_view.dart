import 'package:flutter/material.dart';
import 'package:round_8_mobile_safarni_team4/features/destination/presentation/view/widgts/custom_bottom_var_dest.dart';
import 'package:round_8_mobile_safarni_team4/features/destination/presentation/view/widgts/destination_view_body.dart';


class DestinationView extends StatelessWidget {
  const DestinationView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: DestinationPage(),
        bottomNavigationBar:   CusotmBottomBarDest()
    );
  }
}

