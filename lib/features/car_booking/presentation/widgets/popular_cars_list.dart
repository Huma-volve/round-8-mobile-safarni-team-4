import 'package:flutter/material.dart';
import 'package:round_8_mobile_safarni_team4/core/helpers/size_config_extension.dart';
import 'package:round_8_mobile_safarni_team4/features/car_booking/domain/entities/search_car_response_entity.dart';
import '../../../../core/constants/assets_paths.dart';
import 'car_card.dart';

class PopularCarsList extends StatefulWidget {
  const PopularCarsList({super.key, required this.cars});
final List<CarEntity>cars;
  @override
  State<PopularCarsList> createState() => _PopularCarsListState();
}

class _PopularCarsListState extends State<PopularCarsList> {

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: widget.cars.length,
      separatorBuilder: (context, index) => context.gapH(8),
      itemBuilder: (context, index) => CarCard(model: widget.cars[index]),
    );
  }
}

