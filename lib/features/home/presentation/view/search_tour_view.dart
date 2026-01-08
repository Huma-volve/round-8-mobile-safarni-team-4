import 'package:flutter/material.dart';
import 'package:round_8_mobile_safarni_team4/features/home/presentation/view/widgets/search_tour.dart';


class SearchTourView extends StatelessWidget {
  const SearchTourView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SafeArea(child: SearchTour()),
    );
  }
}
