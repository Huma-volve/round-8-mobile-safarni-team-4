import 'package:flutter/material.dart';
import '../../../../core/colors/app_colors.dart';
import '../widgets/car_details_image_gallery.dart';
import '../widgets/car_details_location.dart';
import '../widgets/car_rent_plan_card.dart';
import '../widgets/car_spec_card.dart';
import '../widgets/car_section_header.dart';

class CarDetailsView extends StatelessWidget {
  const CarDetailsView({super.key});

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
            Expanded(flex: 4, child: const CarDetailsImageGallery()),
            Expanded(
              flex: 5,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 24),
                child: Column(
                  spacing: 12,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(flex: 4, child: const CarInformation()),
                    Expanded(flex: 5, child: const PlanInformation()),
                    Expanded(flex: 3, child: const LocationInformation()),
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
          child: FilledButton(onPressed: () {}, child: Text("Pick up")),
        ),
      ),
    );
  }
}

class LocationInformation extends StatelessWidget {
  const LocationInformation({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 12,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const CarSectionHeader(title: 'Location'),
        Expanded(child: const CarDetailsLocation()),
      ],
    );
  }
}

class PlanInformation extends StatelessWidget {
  const PlanInformation({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 12,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const CarSectionHeader(title: 'Plan'),
        Expanded(child: const RentPlanSection()),
      ],
    );
  }
}

class CarInformation extends StatelessWidget {
  const CarInformation({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 12,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const CarSectionHeader(title: 'Popular Cars'),
        Expanded(child: const CarSpecsSection()),
      ],
    );
  }
}

class CarSpecsSection extends StatelessWidget {
  const CarSpecsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        spacing: 12,
        children: [
          const CarSpecCard(label: 'Power', value: '429 hp @ 6,100 rpm'),
          const CarSpecCard(label: 'Max Speed', value: '280 km/h'),
          const CarSpecCard(label: 'Acceleration', value: '4.9 sec 0-60'),
        ],
      ),
    );
  }
}

class RentPlanSection extends StatelessWidget {
  const RentPlanSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      spacing: 12,
      children: [
        const Expanded(
          child: CarRentPlanCard(
            icon: Icons.access_time,
            title: 'Hourly Rent',
            subtitle: 'Best for business appointments',
            price: '\$10',
            isSelected: true,
          ),
        ),
        const Expanded(
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
