import 'package:flutter/material.dart';
import 'package:get/get_utils/src/extensions/context_extensions.dart';
import 'package:round_8_mobile_safarni_team4/core/helpers/size_config_extension.dart';
import 'package:round_8_mobile_safarni_team4/features/car_booking/presentation/widgets/popular_cars_list.dart';

import '../widgets/car_divider.dart';
import '../widgets/car_info_item.dart';

class PickUpDetailsView extends StatelessWidget {
  const PickUpDetailsView({super.key, required this.model});

  final PopularCarModel model;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Pick Up')),
      body: Center(
        child: Stack(
          alignment: Alignment.bottomCenter,
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.3,
              width: double.infinity,
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 24),
              padding: const EdgeInsets.all(16),
              height: MediaQuery.of(context).size.height * 0.25,
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
                    model.name,
                    style: context.textTheme.titleMedium?.copyWith(
                      fontWeight: FontWeight.w600,
                      fontSize: context.sp(16),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CarInfoItem(label: model.type),
                      const CarDivider(),
                      CarInfoItem(label: model.seats),
                      const CarDivider(),
                      CarInfoItem(label: model.fuel),
                    ],
                  ),
                  Row(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Text(
                            '\$80 ',
                            style: context.textTheme.titleMedium?.copyWith(
                              fontSize: context.sp(16),
                            ),
                          ),
                          Text(
                            'per hour',
                            style: context.textTheme.bodySmall?.copyWith(
                              color: Colors.grey.shade500,
                              fontWeight: FontWeight.w400,
                              fontSize: context.sp(10),
                            ),
                          ),
                        ],
                      ),
                      Spacer(),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Text(
                            '\$400 ',
                            style: context.textTheme.titleMedium?.copyWith(
                              fontSize: context.sp(16),
                            ),
                          ),
                          Text(
                            'per day',
                            style: context.textTheme.bodySmall?.copyWith(
                              color: Colors.grey.shade500,
                              fontWeight: FontWeight.w400,
                              fontSize: context.sp(10),
                            ),
                          ),
                        ],
                      ),                    ],
                  ),
                  SizedBox(
                    width: double.infinity,
                    child: FilledButton(
                      onPressed: () {

                      },
                      child: Text('Confirm'),
                    ),
                  ),
                ],
              ),
            ),
            Positioned(
              top: 0,
              right: 0,
              child: Image.asset(
                model.image,
                width: MediaQuery.of(context).size.width * 0.5,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
