import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get_utils/get_utils.dart';
import 'package:round_8_mobile_safarni_team4/core/di/service_locator.dart';
import 'package:round_8_mobile_safarni_team4/core/helpers/size_config_extension.dart';
import 'package:round_8_mobile_safarni_team4/features/car_booking/data/models/search_car_request.dart';
import 'package:round_8_mobile_safarni_team4/features/car_booking/domain/entities/search_car_response_entity.dart';
import 'package:round_8_mobile_safarni_team4/features/car_booking/presentation/cubit/car_appointment_cubit.dart';
import '../../../../core/widgets/error_state_widget.dart';
import '../../../../core/widgets/loading_state_widget.dart';
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
      body: BlocProvider(
        create:
            (context) =>
                getIt<CarAppointmentCubit>()..doIntent(
                  SearchCarIntent(
                    searchCarRequest: const SearchCarRequest(
                      search: 'mercedes',
                    ),
                  ),
                ),
        child: LayoutBuilder(
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
                      BlocBuilder<CarAppointmentCubit, CarAppointmentState>(
                        builder: (context, state) {
                          switch (state.searchCarStatus) {
                            case Status.initial:
                            case Status.loading:
                              return SizedBox(
                                height: height * 0.3,
                                child: const Center(
                                  child: LoadingStateWidget(),
                                ),
                              );
                            case Status.success:
                              if (state.searchCarResponseEntity != null &&
                                  state
                                      .searchCarResponseEntity!
                                      .data!
                                      .isEmpty) {
                                return SizedBox(
                                  height: height * 0.3,
                                  child: Center(
                                    child: Text(
                                      'No cars found',
                                      style: context.textTheme.titleMedium,
                                    ),
                                  ),
                                );
                              }
                              return PopularCarsSection(
                                cars: state.searchCarResponseEntity?.data ?? [],
                              );
                            case Status.error:
                              return ErrorStateWidget(
                                error: state.searchCarError!,
                              );
                          }
                        },
                      ),
                      context.gapH(12),
                    ]),
                  ),
                ),
              ],
            );
          },
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
        const Expanded(child: BrandsList()),
      ],
    );
  }
}

class PopularCarsSection extends StatelessWidget {
  const PopularCarsSection({super.key, required this.cars});

  final List<CarEntity> cars;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const CarSectionHeader(title: 'Popular Cars'),
        context.gapH(12),
        PopularCarsList(cars: cars),
      ],
    );
  }
}
