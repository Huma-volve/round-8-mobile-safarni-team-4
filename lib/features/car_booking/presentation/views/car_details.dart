import 'package:flutter/material.dart';
import '../../../../core/colors/app_colors.dart';
import '../../../../core/routing/app_routes.dart';
import '../widgets/car_details_image_gallery.dart';
import '../widgets/car_details_location.dart';
import '../widgets/car_rent_plan_card.dart';
import '../widgets/car_spec_card.dart';
import '../widgets/car_section_header.dart';
import '../widgets/popular_cars_list.dart';

class CarDetailsView extends StatelessWidget {
  const CarDetailsView({super.key, required this.model});

  final PopularCarModel model;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: EdgeInsets.only(
          bottom: MediaQuery.of(context).size.height * 0.115,
        ),
        child: Column(
          spacing: 16,
          children: [
            Expanded(
              flex: 4,
              child: CarDetailsImageGallery(image: model.image),
            ),
            const Expanded(
              flex: 5,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 24),
                child: Column(
                  spacing: 12,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(flex: 4, child: CarInformation()),
                    Expanded(flex: 5, child: PlanInformation()),
                    Expanded(flex: 3, child: LocationInformation()),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
      bottomSheet: Container(
        color: AppColors.white,
        padding: const EdgeInsets.all(16.0),
        child: SizedBox(
          width: double.infinity,
          child: FilledButton(
            onPressed: () {
              Navigator.pushNamed(
                context,
                AppRoutes.pickUpDetails,
                arguments: model,
              );
            },
            child: const Text("Pick up"),
          ),
        ),
      ),
    );
  }
}

class LocationInformation extends StatelessWidget {
  const LocationInformation({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      spacing: 12,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CarSectionHeader(title: 'Location'),
        Expanded(child: CarDetailsLocation()),
      ],
    );
  }
}

class PlanInformation extends StatelessWidget {
  const PlanInformation({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      spacing: 12,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CarSectionHeader(title: 'Plan'),
        Expanded(child: RentPlanSection()),
      ],
    );
  }
}

class CarInformation extends StatelessWidget {
  const CarInformation({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      spacing: 12,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CarSectionHeader(title: 'Popular Cars'),
        Expanded(child: CarSpecsSection()),
      ],
    );
  }
}

class CarSpecsSection extends StatelessWidget {
  const CarSpecsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        spacing: 12,
        children: [
          CarSpecCard(label: 'Power', value: '429 hp @ 6,100 rpm'),
          CarSpecCard(label: 'Max Speed', value: '280 km/h'),
          CarSpecCard(label: 'Acceleration', value: '4.9 sec 0-60'),
        ],
      ),
    );
  }
}

class RentPlanSection extends StatelessWidget {
  const RentPlanSection({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      spacing: 12,
      children: [
        Expanded(
          child: CarRentPlanCard(
            icon: Icons.access_time,
            title: 'Hourly Rent',
            subtitle: 'Best for business appointments',
            price: '\$10',
            isSelected: true,
          ),
        ),
        Expanded(
          child: CarRentPlanCard(
            icon: Icons.calendar_today_outlined,
            title: 'Daily Rent',
            subtitle: 'Best for business appointments',
            price: '\$80',
            isSelected: false,
          ),
        ),
      ],
    );
  }
}
