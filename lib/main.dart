import 'dart:ui';

import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:round_8_mobile_safarni_team4/core/routing/app_routes.dart';
import 'package:round_8_mobile_safarni_team4/core/routing/app_routing.dart';
import 'package:round_8_mobile_safarni_team4/core/theme/app_theme.dart';
import 'package:round_8_mobile_safarni_team4/features/home/presentation/view/home_view.dart';


void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(
    DevicePreview(
      enabled: !const bool.fromEnvironment('dart.vm.product'),
      builder: (context) => const MyApp(),
    ),
  );
  WidgetsFlutterBinding.ensureInitialized(); // !kReleaseMode
  runApp(DevicePreview(enabled: false, builder: (context) => const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812), // w:375 , h:812
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) {
        return MaterialApp(
          locale: DevicePreview.locale(context),
          builder: DevicePreview.appBuilder,
          debugShowCheckedModeBanner: false,
          theme: AppThemes.light,
          initialRoute: AppRoutes.carBooking,
          onGenerateRoute: AppRouter.onGenerateRoute,
        );
      },
    );
  }
}
class MyCustomScrollBehavior extends MaterialScrollBehavior {
  // Override behavior methods and getters like dragDevices
  @override
  Set<PointerDeviceKind> get dragDevices => {
    PointerDeviceKind.touch,
    PointerDeviceKind.mouse,
    PointerDeviceKind.stylus,
    PointerDeviceKind.unknown,
  };
}