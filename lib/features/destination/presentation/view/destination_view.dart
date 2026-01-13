import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:round_8_mobile_safarni_team4/features/destination/presentation/view/widgts/custom_bottom_var_dest.dart';
import 'package:round_8_mobile_safarni_team4/features/destination/presentation/view/widgts/destination_view_body.dart';

import '../../../../core/di/service_locator.dart';
import '../managers/destination_cubit/destination_cubit.dart' show DestinationCubit;


class DestinationView extends StatelessWidget {
  final int tourId; // استقبال الـ ID
  const DestinationView({super.key, required this.tourId});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<DestinationCubit>()..getTourDetails(tourId),
      child: Scaffold(
          body: DestinationPage(),
          bottomNavigationBar: const CusotmBottomBarDest()),
    );
  }
}