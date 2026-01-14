import 'package:flutter/material.dart';
import 'package:round_8_mobile_safarni_team4/features/profile/presentation/view/widgets/my_booking_body.dart';

class MyBookingView extends StatelessWidget {
  const MyBookingView({super.key});

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
      body: const MyBookingBody(),
    );
  }
}
