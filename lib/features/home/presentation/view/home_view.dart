import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:round_8_mobile_safarni_team4/core/di/service_locator.dart';
import 'package:round_8_mobile_safarni_team4/features/home/presentation/managers/home_cubit/home_cubit.dart';
import 'package:round_8_mobile_safarni_team4/features/home/presentation/view/widgets/home_view_body.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  // int _selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      // home_view.dart
        create: (context) => getIt<HomeCubit>()
          ..getRecommendedTours()
          ..getAvailableTours(),
      child: Scaffold(backgroundColor: Colors.white, body: HomeViewBody()),
    );
  }
}
