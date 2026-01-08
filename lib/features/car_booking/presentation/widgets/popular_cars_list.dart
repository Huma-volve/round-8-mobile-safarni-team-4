import 'package:flutter/material.dart';
import 'package:round_8_mobile_safarni_team4/core/helpers/size_config_extension.dart';
import '../../../../core/constants/assets_paths.dart';
import 'car_card.dart';

class PopularCarsList extends StatefulWidget {
  const PopularCarsList({super.key});

  @override
  State<PopularCarsList> createState() => _PopularCarsListState();
}

class _PopularCarsListState extends State<PopularCarsList> {
  final List<PopularCarModel> cars = [
    PopularCarModel(
      name: 'S 500 Sedan',
      image: AssetsPaths.mercedesSedan,
      type: 'Automatic',
      seats: '5 seats',
      fuel: 'Diesel',
    ),
    PopularCarModel(
      name: 'GLA 250 SUV',
      image: AssetsPaths.mercedesSuv,
      type: 'Automatic',
      seats: '7 seats',
      fuel: 'Diesel',
    ),
    PopularCarModel(
      name: 'BMW X5 SUV',
      image: AssetsPaths.bmwSuv,
      type: 'Automatic',
      seats: '5 seats',
      fuel: 'Petrol',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: cars.length,
      separatorBuilder: (context, index) => context.gapH(8),
      itemBuilder: (context, index) => CarCard(model: cars[index]),
    );
  }
}

class PopularCarModel {
  final String name;
  final String image;
  final String type;
  final String seats;
  final String fuel;

  const PopularCarModel({
    required this.name,
    required this.image,
    required this.type,
    required this.seats,
    required this.fuel,
  });
}
