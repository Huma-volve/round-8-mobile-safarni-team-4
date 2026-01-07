import 'package:flutter/material.dart';
import 'package:round_8_mobile_safarni_team4/features/home/presentation/view/widgets/home_view_body.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(

          child: HomeViewBody())
    );
  }
}
