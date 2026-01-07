import 'package:flutter/material.dart';
import 'package:round_8_mobile_safarni_team4/core/helpers/size_config_extension.dart';
import '../widgets/brands_list.dart';
import '../widgets/car_hero_banner.dart';
import '../widgets/car_search_bar.dart';
import '../widgets/car_section_header.dart';
import '../widgets/popular_cars_list.dart';

class CarBookingView extends StatelessWidget {
  const CarBookingView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(Icons.arrow_back_ios_new, size: 20),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(flex: 2, child: const CarSearchBar()),
            context.gapH(16),
            Expanded(flex: 9, child: const CarHeroBanner()),
            context.gapH(12),
            Expanded(flex: 8, child: const BrandsSection()),
            context.gapH(12),
            Expanded(flex: 12, child: const PopularCarsSection()),
          ],
        ),
      ),
    );
  }
}

class BrandsSection extends StatelessWidget {
  const BrandsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const CarSectionHeader(title: 'Brands'),
        context.gapH(12),
        Expanded(child: const BrandsList()),
      ],
    );
  }
}

class PopularCarsSection extends StatelessWidget {
  const PopularCarsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const CarSectionHeader(title: 'Popular Cars'),
        Expanded(child: const PopularCarsList()),
      ],
    );
  }
}
