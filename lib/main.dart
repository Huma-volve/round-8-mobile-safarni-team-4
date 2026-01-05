import 'package:device_preview/device_preview.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:round_8_mobile_safarni_team4/core/routing/app_routes.dart';
import 'package:round_8_mobile_safarni_team4/core/routing/app_routing.dart';
import 'package:round_8_mobile_safarni_team4/features/hotel/presentation/view/available_room.dart';
import 'package:round_8_mobile_safarni_team4/features/hotel/presentation/view/hotel_view.dart';
import 'core/theme/app_theme.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();  // !kReleaseMode
  runApp(DevicePreview(enabled: false, builder: (context) => const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      child: MaterialApp(
        useInheritedMediaQuery: true,
        locale: DevicePreview.locale(context),
        builder: DevicePreview.appBuilder,
        debugShowCheckedModeBanner: false,
        theme: AppThemes.light,
        home: AvailableRoom(),
      
        // initialRoute: AppRoutes.flightBooking,
        // onGenerateRoute: AppRouter.onGenerateRoute,
      ),
    );
  }
}
