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
      body: LayoutBuilder(
        builder: (context, constraints) {
          final height = constraints.maxHeight;
          return CustomScrollView(
            slivers: [
              SliverPadding(
                padding: const EdgeInsets.symmetric(horizontal: 24),
                sliver: SliverList(
                  delegate: SliverChildListDelegate([
                    SizedBox(
                      height: height * 0.085,
                      child: const CarSearchBar(),
                    ),
                    context.gapH(16),
                    SizedBox(
                      height: height * 0.27,
                      child: const CarHeroBanner(),
                    ),
                    context.gapH(12),
                    SizedBox(
                      height: height * 0.23,
                      child: const BrandsSection(),
                    ),
                    context.gapH(12),
                    const PopularCarsSection(),
                    context.gapH(12),
                  ]),
                ),
              ),
            ],
          );
        },
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
        const Expanded(child: BrandsList()),
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
        context.gapH(12),
        const PopularCarsList(),
      ],
    );
  }
}
