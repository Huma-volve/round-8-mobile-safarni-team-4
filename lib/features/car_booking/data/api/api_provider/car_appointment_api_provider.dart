import 'package:dio/dio.dart';

import '../api_client/car_appointment_api_client.dart';

abstract class CarAppointmentApiClientProvider {
  CarAppointmentApiClient provideCarAppointmentApiClient(Dio dio) {
    return CarAppointmentApiClient(dio);
  }
}
