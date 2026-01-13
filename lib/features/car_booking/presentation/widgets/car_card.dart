import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:round_8_mobile_safarni_team4/core/helpers/size_config_extension.dart';
import 'package:round_8_mobile_safarni_team4/core/helpers/theme_extension.dart';
import 'package:round_8_mobile_safarni_team4/core/widgets/loading_state_widget.dart';
import 'package:round_8_mobile_safarni_team4/features/car_booking/domain/entities/search_car_response_entity.dart';
import 'package:round_8_mobile_safarni_team4/features/car_booking/presentation/widgets/popular_cars_list.dart';
import '../../../../core/routing/app_routes.dart';
import 'car_divider.dart';
import 'car_info_item.dart';

class CarCard extends StatelessWidget {
  final CarEntity model;

  const CarCard({super.key, required this.model});

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.bottomCenter,
      children: [
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.25,
          width: double.infinity,
        ),
        Container(
          padding: const EdgeInsets.all(16),
          height: MediaQuery.of(context).size.height * 0.22,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(16),
            border: Border.all(color: Colors.grey.shade100),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.02),
                blurRadius: 10,
                offset: const Offset(0, 4),
              ),
            ],
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                model.model ?? '',
                style: context.textTheme.titleMedium?.copyWith(
                  fontWeight: FontWeight.w600,
                  fontSize: context.sp(16),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CarInfoItem(label: model.transmission ?? ''),
                  const CarDivider(),
                  CarInfoItem(label: model.seatCount.toString()),
                  const CarDivider(),
                  CarInfoItem(label: model.fuelType ?? ''),
                ],
              ),
              Row(
                children: [
                  Expanded(
                    child: FilledButton(
                      onPressed: () {},
                      child: const Text('Rent Now'),
                    ),
                  ),
                  context.gapW(12),
                  Expanded(
                    child: OutlinedButton(
                      onPressed: () {
                        Navigator.pushNamed(
                          context,
                          AppRoutes.carDetails,
                          arguments: model,
                        );
                      },
                      child: const Text('Detail'),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
        Positioned(
          top: 0,
          right: 0,
          child: CachedNetworkImage(
            imageUrl: model.images?[0].url ?? '',
            imageBuilder:
                (context, imageProvider) => Container(
                  width: MediaQuery.of(context).size.width * 0.5,
                  height: MediaQuery.of(context).size.width * 0.2,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: imageProvider,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
            placeholder: (context, url) => const LoadingStateWidget(),
            errorWidget: (context, url, error) => const Icon(Icons.error),
          ),
        ),
      ],
    );
  }
}
